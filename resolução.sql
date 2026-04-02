-- Questão 01
CREATE SCHEMA avaliacaocontinua;
GO

-- Questão 02
CREATE TABLE avaliacaocontinua.company (
    company_name VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    CONSTRAINT PK_company PRIMARY KEY (company_name)
);
GO

-- Questão 03
CREATE TABLE avaliacaocontinua.employee (
    person_name VARCHAR(100) NOT NULL,
    street VARCHAR(200),
    city VARCHAR(100),
    CONSTRAINT PK_employee PRIMARY KEY (person_name)
);
GO

-- Questão 04
CREATE TABLE avaliacaocontinua.manages (
    person_name VARCHAR(100) NOT NULL,
    manager_name VARCHAR(100),
    CONSTRAINT PK_manages PRIMARY KEY (person_name)
);
GO

-- Questão 05
CREATE TABLE avaliacaocontinua.works (
    person_name VARCHAR(100) NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2),
    CONSTRAINT PK_works PRIMARY KEY (person_name)
);
GO

-- Questão 06
ALTER TABLE avaliacaocontinua.works
ADD CONSTRAINT FK_works_employee
FOREIGN KEY (person_name)
REFERENCES avaliacaocontinua.employee(person_name)
ON UPDATE CASCADE
ON DELETE CASCADE;
GO

-- Questão 07
ALTER TABLE avaliacaocontinua.works
ADD CONSTRAINT FK_works_company
FOREIGN KEY (company_name)
REFERENCES avaliacaocontinua.company(company_name)
ON UPDATE CASCADE
ON DELETE CASCADE;
GO

-- Questão 08
ALTER TABLE avaliacaocontinua.manages
ADD CONSTRAINT FK_manages_employee
FOREIGN KEY (person_name)
REFERENCES avaliacaocontinua.employee(person_name)
ON UPDATE CASCADE
ON DELETE CASCADE;
GO
