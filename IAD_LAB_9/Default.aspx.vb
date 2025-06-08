
Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub ListBox_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles ListBox.SelectedIndexChanged
        Dim descriptions As New Dictionary(Of String, String) From {
            {"Java", "Java is a high-level, class-based, object-oriented programming language"},
            {"JavaScript", "JavaScript is a veryversatile language primarily used for web development"},
            {"C#", "C# is a modern language for web dev"},
            {"C++", "C++ is an entension of C that includes object-oriented features"},
            {"C", "C is a general purpose programming language for managing data"},
            {"Python", "Python is an interpreted, high-level, general-purpose programming language"},
            {"SQL", "SQL is a domain specific language used in programming and designed for managing data"},
            {"HTML", "HTML is a standard markup langauge used for creating web pages"},
            {"CSS", "CSS is a style sheet language used for describing the presentation of a document"},
            {"PHP", "PHP is a popular general-purpose scripting language that is especially suited to web development"}
        }
        Dim selectedItem As String = ListBox.SelectedItem.Text
        If descriptions.ContainsKey(selectedItem) Then
            Label1.Text = descriptions(selectedItem)
        Else
            Label1.Text = ""
        End If
    End Sub
End Class
