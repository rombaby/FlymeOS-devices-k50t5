.class Lcom/android/server/PiezoObserver$1;
.super Landroid/os/Handler;
.source "PiezoObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PiezoObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PiezoObserver;


# direct methods
.method constructor <init>(Lcom/android/server/PiezoObserver;Z)V
    .locals 0
    .param p2, "x0"    # Z

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/server/PiezoObserver$1;->this$0:Lcom/android/server/PiezoObserver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 223
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 225
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/PiezoObserver$1;->this$0:Lcom/android/server/PiezoObserver;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/PiezoObserver;->initCeramic(Z)V
    invoke-static {v0, v1}, Lcom/android/server/PiezoObserver;->access$400(Lcom/android/server/PiezoObserver;Z)V

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
