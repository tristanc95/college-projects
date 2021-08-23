Imports System.Data.SqlClient
Imports Class02

Partial Class Donations
    Inherits System.Web.UI.Page

    'This was an attempt to add donations to the current table value, not adding additions. I couldn't get it to fully work properly with the time allotted, but I'm
    'leaving the code here just so you can see it as well.

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim InvList As New List(Of InventoryInformation)

        InvList = OpenInventory()

        For Each Inventory In InvList
            'ddlInventory.Items.Add(Inventory.InvID)
        Next
    End Sub


    'Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
    'Dim SQConnection As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
    'Dim insertSQL As String
    'Dim internallyNext As Integer
    ' Dim NewDonation As Integer
    'NewDonation = txtDonation.Text

    ' internallyNext = InventoryAddition()

    ' insertSQL = "INSERT INTO Film_And_Music_Inventory Values(" & ","
    'insertSQL = insertSQL & "'" & internallyNext + NewDonation & "', '"
    'insertSQL = insertSQL & ")"

    ' Dim commandInsert As New SqlCommand(insertSQL, SQConnection)
    ' SQConnection.Open()
    ' commandInsert.ExecuteNonQuery()
    ' SQConnection.Close()

    'End Sub
End Class
