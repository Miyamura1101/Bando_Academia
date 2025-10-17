Create Procedure sp_BuscarInstrutoresPorID
	@Id INT
As
Begin
	Select * from Instrutores
	WHERE id = @Id;
END;
GO