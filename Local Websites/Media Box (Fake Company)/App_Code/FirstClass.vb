Imports Microsoft.VisualBasic
Imports System.Data.SqlClient

'Creating a class that will set that each customer that is signed up will get a new primary key and will add one to the new table to prevent any duplicate primary key IDs.
Public Class FirstClass

    Public Shared Function NextCustomer() As Integer
        Dim connectit As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
        Dim stringSQL As String
        stringSQL = "SELECT cus_ID FROM CustomerInformation"
        Dim cmd As New SqlCommand(stringSQL, connectit)
        connectit.Open()

        Dim DataReader As SqlDataReader = cmd.ExecuteReader
        Dim intNextNumber As Integer
        While DataReader.Read()
            intNextNumber = DataReader(0)
        End While

        connectit.Close()

        Return intNextNumber + 1

    End Function

End Class

