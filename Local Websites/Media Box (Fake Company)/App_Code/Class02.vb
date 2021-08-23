Imports Microsoft.VisualBasic
Imports System.Data.SqlClient

Public Class Class02

    'Allowing the inventory table to be read and used for future SQL Connections by making a list and having the data read via a SQL Data Reader
    Public Shared Function OpenInventory() As List(Of InventoryInformation)

        Dim Connector As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
        Dim strSQL As String
        strSQL = "SELECT * FROM Film_And_Music_Inventory"
        Dim cmd As New SqlCommand(strSQL, Connector)
        Connector.Open()

        Dim dataReader As SqlDataReader = cmd.ExecuteReader
        Dim InvList As New List(Of InventoryInformation)
        Dim Inventory As InventoryInformation

        While dataReader.Read()
            Inventory = New InventoryInformation
            Inventory.InvID = dataReader(0)
            Inventory.TotAmount = dataReader(1)
            Inventory.Loaner = dataReader(2)
            InvList.Add(Inventory)
        End While

        Connector.Close()
        Return InvList

    End Function

    'Allowing the inventory table to be read and used for future SQL Connections by making a list and having the data read via a SQL Data Reader
    Public Shared Function OpenSecondInventory() As List(Of InventoryVidGameInformation)

        Dim Connector As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
        Dim strSQL As String
        strSQL = "SELECT * FROM VideoGameInventory"
        Dim cmd As New SqlCommand(strSQL, Connector)
        Connector.Open()

        Dim dataReader As SqlDataReader = cmd.ExecuteReader
        Dim InvenList As New List(Of InventoryVidGameInformation)
        Dim Inventory As InventoryVidGameInformation

        While dataReader.Read()
            Inventory = New InventoryVidGameInformation
            Inventory.InvID = dataReader(0)
            Inventory.TotAmount = dataReader(1)
            Inventory.Loaner = dataReader(2)
            InvenList.Add(Inventory)
        End While

        Connector.Close()
        Return InvenList

    End Function

    'Public Shared Function InventoryAddition() As Integer
    'Dim Connector As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
    'Dim strSQL As String
    ' strSQL = " SELECT Amount_Available FROM Film_And_Music_Inventory"
    'Dim commandPrompt As New SqlCommand(strSQL, Connector)
    '  Connector.Open()

    'Dim dataReader As SqlDataReader = commandPrompt.ExecuteReader
    'Dim CurrentDonation As Integer
    ' While dataReader.Read()
    '        CurrentDonation = dataReader(0)
    ' End While

    '     Connector.Close()

    'Return CurrentDonation

    'End Function


End Class
