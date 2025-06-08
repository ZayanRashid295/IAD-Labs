Partial Class LoggerPage
    Inherits System.Web.UI.Page

    Private Property LifecycleLog As String
        Get
            Return If(ViewState("LifecycleLog"), String.Empty)
        End Get
        Set(value As String)
            ViewState("LifecycleLog") = value
        End Set
    End Property


    Private Sub RecordEvent(eventStage As String)
        LifecycleLog &= String.Format("[{0:HH:mm:ss}] - {1}<br/>", DateTime.Now, eventStage)
    End Sub
    Protected Sub Page_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit
        RecordEvent("PreInit Stage")
    End Sub

    Protected Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        RecordEvent("Init Stage")
    End Sub

    Protected Sub Page_InitComplete(sender As Object, e As EventArgs) Handles Me.InitComplete
        RecordEvent("InitComplete Stage")
    End Sub

    Protected Sub Page_PreLoad(sender As Object, e As EventArgs) Handles Me.PreLoad
        RecordEvent("PreLoad Stage")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        RecordEvent("Load Stage")
    End Sub

    Protected Sub Page_LoadComplete(sender As Object, e As EventArgs) Handles Me.LoadComplete
        RecordEvent("LoadComplete Stage")
    End Sub

    Protected Sub Page_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender
        RecordEvent("PreRender Stage")
    End Sub

    Protected Sub Page_PreRenderComplete(sender As Object, e As EventArgs) Handles Me.PreRenderComplete
        RecordEvent("PreRenderComplete Stage")
    End Sub

    Protected Sub Page_SaveStateComplete(sender As Object, e As EventArgs) Handles Me.SaveStateComplete
        RecordEvent("SaveStateComplete Stage")
    End Sub

    Protected Sub Page_Unload(sender As Object, e As EventArgs) Handles Me.Unload

    End Sub


    Protected Sub btnLogLifecycle_Click(sender As Object, e As EventArgs)
        RecordEvent("User Clicked Log Button")
    End Sub

    Protected Sub btnDisplayLogs_Click(sender As Object, e As EventArgs)
        outputLogs.Text = "<b>Lifecycle Events:</b><br/>" & LifecycleLog
    End Sub
End Class
