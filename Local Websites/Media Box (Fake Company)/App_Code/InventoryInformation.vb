Imports Microsoft.VisualBasic

'Creating a Public Class in order to grab various ids and values from the tables in order to give them a value so there can be changes added to the tables if needed.
Public Class InventoryInformation
    Private InventoryID As String
    Private TotalAmount As Integer
    Private LoanedOut As Integer

    Public Sub New()

    End Sub

    Public Property InvID As String
        Get
            Return InventoryID
        End Get
        Set(value As String)
            InventoryID = value
        End Set
    End Property

    Public Property TotAmount As Integer
        Get
            Return TotalAmount
        End Get
        Set(value As Integer)
            TotalAmount = value
        End Set
    End Property

    Public Property Loaner As Integer
        Get
            Return LoanedOut
        End Get
        Set(value As Integer)
            LoanedOut = value
        End Set
    End Property


End Class

Public Class InventoryVidGameInformation
    Private InventoryID As String
    Private TotalAmount As Integer
    Private LoanedOut As Integer

    Public Sub New()

    End Sub

    Public Property InvID As String
        Get
            Return InventoryID
        End Get
        Set(value As String)
            InventoryID = value
        End Set
    End Property

    Public Property TotAmount As Integer
        Get
            Return TotalAmount
        End Get
        Set(value As Integer)
            TotalAmount = value
        End Set
    End Property

    Public Property Loaner As Integer
        Get
            Return LoanedOut
        End Get
        Set(value As Integer)
            LoanedOut = value
        End Set
    End Property


End Class
