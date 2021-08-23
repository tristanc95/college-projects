Imports Microsoft.VisualBasic

'Creating a Public Class in order to grab various ids and values from the tables in order to give them a value so there can be changes added to the tables if needed.
Public Class CustomerInformation
    Private CustomerID As Integer
    Private CustomerFirstName As String
    Private CustomerLastName As String
    Private CustomerPhone As String
    Private CustomerBalance As Double
    Private CustomerRemainedBalance As Double

    Public Sub New()

    End Sub

    Public Property cusID As Integer
        Get
            Return CustomerID
        End Get
        Set(value As Integer)
            CustomerID = value
        End Set
    End Property

    Public Property FirstName As String
        Get
            Return CustomerFirstName
        End Get
        Set(value As String)
            CustomerFirstName = value
        End Set
    End Property

    Public Property LastName As String
        Get
            Return CustomerLastName
        End Get
        Set(value As String)
            CustomerLastName = value
        End Set
    End Property

    Public Property PhoneNumber As String
        Get
            Return CustomerPhone
        End Get
        Set(value As String)
            CustomerPhone = value
        End Set
    End Property

    Public Property Balance As String
        Get
            Return CustomerBalance
        End Get
        Set(value As String)
            CustomerBalance = value
        End Set
    End Property

    Public Property Remainder As String
        Get
            Return CustomerRemainedBalance
        End Get
        Set(value As String)
            CustomerRemainedBalance = value
        End Set
    End Property

    Public ReadOnly Property FullName As String
        Get
            Return CustomerFirstName & " " & CustomerLastName
        End Get
    End Property

End Class

