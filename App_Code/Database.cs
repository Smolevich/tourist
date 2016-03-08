using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;
using Configuration = System.Configuration;

/// <summary>
/// Сводное описание для Database
/// </summary>
public class Database
{

    private String connString = Configuration.ConfigurationManager.ConnectionStrings["DataBaseConnectionString"].ConnectionString;

    private OleDbConnection connection;

    private OleDbCommand command;

    private DataSet dataset;

    private OleDbDataAdapter adapter;

    private DataTable table;

    public Database()
	{
        connection = new OleDbConnection(connString);
        dataset = new DataSet();

    }

    public DataTable getRow(string query)
    {
        connection.Open();
        adapter = new OleDbDataAdapter(query, connection);
        adapter.Fill(dataset);
        table = dataset.Tables[0];
        connection.Close();
        return (table != null ) ? table : null;
    }
}