-- CreateTable
CREATE TABLE `Usuaria` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(80) NOT NULL,
    `celular` VARCHAR(20) NOT NULL,
    `senhaHash` VARCHAR(191) NOT NULL,
    `papel` ENUM('MEMBRO', 'ADMIN') NOT NULL DEFAULT 'MEMBRO',
    `criadoEm` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `Usuaria_celular_key`(`celular`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Convite` (
    `codigo` VARCHAR(32) NOT NULL,
    `criadoPorId` INTEGER NOT NULL,
    `usadoPorId` INTEGER NULL,
    `expiraEm` DATETIME(3) NOT NULL,
    `criadoEm` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `Convite_usadoPorId_key`(`usadoPorId`),
    PRIMARY KEY (`codigo`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Item` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `vendedoraId` INTEGER NOT NULL,
    `titulo` VARCHAR(100) NOT NULL,
    `descricao` TEXT NULL,
    `precoCentavos` INTEGER NOT NULL,
    `prazoReservaHoras` INTEGER NOT NULL DEFAULT 24,
    `exigePagamentoNoDia` BOOLEAN NOT NULL DEFAULT false,
    `status` ENUM('DISPONIVEL', 'RESERVADO', 'VENDIDO', 'REMOVIDO') NOT NULL DEFAULT 'DISPONIVEL',
    `reservadoPorId` INTEGER NULL,
    `reservadoEm` DATETIME(3) NULL,
    `criadoEm` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `atualizadoEm` DATETIME(3) NOT NULL,

    INDEX `Item_status_criadoEm_idx`(`status`, `criadoEm`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `FotoItem` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `itemId` INTEGER NOT NULL,
    `url` VARCHAR(500) NOT NULL,
    `ordem` INTEGER NOT NULL,

    UNIQUE INDEX `FotoItem_itemId_ordem_key`(`itemId`, `ordem`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `FilaEspera` (
    `itemId` INTEGER NOT NULL,
    `usuariaId` INTEGER NOT NULL,
    `entrouEm` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    INDEX `FilaEspera_itemId_entrouEm_idx`(`itemId`, `entrouEm`),
    PRIMARY KEY (`itemId`, `usuariaId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Convite` ADD CONSTRAINT `Convite_criadoPorId_fkey` FOREIGN KEY (`criadoPorId`) REFERENCES `Usuaria`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Convite` ADD CONSTRAINT `Convite_usadoPorId_fkey` FOREIGN KEY (`usadoPorId`) REFERENCES `Usuaria`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Item` ADD CONSTRAINT `Item_vendedoraId_fkey` FOREIGN KEY (`vendedoraId`) REFERENCES `Usuaria`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Item` ADD CONSTRAINT `Item_reservadoPorId_fkey` FOREIGN KEY (`reservadoPorId`) REFERENCES `Usuaria`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `FotoItem` ADD CONSTRAINT `FotoItem_itemId_fkey` FOREIGN KEY (`itemId`) REFERENCES `Item`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `FilaEspera` ADD CONSTRAINT `FilaEspera_itemId_fkey` FOREIGN KEY (`itemId`) REFERENCES `Item`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `FilaEspera` ADD CONSTRAINT `FilaEspera_usuariaId_fkey` FOREIGN KEY (`usuariaId`) REFERENCES `Usuaria`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
