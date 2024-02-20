USE [GuiaMinera]
GO
INSERT INTO Provincia (id, codigo, nombre_provincia)
SELECT ROW_NUMBER() OVER (
        ORDER BY (
                SELECT NULL
            )
    ),
    codigo,
    nombre_provincia
FROM (
        VALUES ('CAB', 'Capital Federal'),
            ('BSA', 'Buenos Aires'),
            ('CAT', 'Catamarca'),
            ('COR', 'Córdoba'),
            ('CRR', 'Corrientes'),
            ('CHA', 'Chaco'),
            ('CHU', 'Chubut'),
            ('ENT', 'Entre Ríos'),
            ('FOR', 'Formosa'),
            ('JUJ', 'Jujuy'),
            ('PAM', 'La Pampa'),
            ('RIO', 'La Rioja'),
            ('MEN', 'Mendoza'),
            ('MIS', 'Misiones'),
            ('NEU', 'Neuquén'),
            ('RNE', 'Río Negro'),
            ('SAL', 'Salta'),
            ('SJU', 'San Juan'),
            ('SLU', 'San Luis'),
            ('SCR', 'Santa Cruz'),
            ('SFE', 'Santa Fe'),
            ('SDE', 'Santiago del Estero'),
            ('TDF', 'Tierra del Fuego'),
            ('TUC', 'Tucumán')
    ) AS Data(codigo, nombre_provincia);
GO