-- Creación de la tabla Clientes
CREATE TABLE Clientes (
    id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    correo TEXT NOT NULL,
    telefono TEXT NOT NULL
);

-- Creación de la tabla Productos
CREATE TABLE Productos (
    id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    precio INTEGER NOT NULL,
    stock INTEGER NOT NULL
);

-- Creación de la tabla Pedidos
CREATE TABLE Pedidos (
    id INTEGER PRIMARY KEY,
    id_cliente INTEGER NOT NULL,
    fecha TEXT NOT NULL,
    total INTEGER NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id)
);

-- Creación de la tabla Detalles_Pedido
CREATE TABLE Detalles_Pedido (
    id INTEGER PRIMARY KEY,
    id_pedido INTEGER NOT NULL,
    id_producto INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id),
    FOREIGN KEY (id_producto) REFERENCES Productos(id)
);
