.class Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
.super Landroid/os/Handler;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/rns/RnsServiceImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/rns/RnsServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    .line 736
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 737
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 741
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 754
    const-string v0, "RnsService"

    const-string v1, "Unknown message"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :goto_0
    :sswitch_0
    return-void

    .line 743
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleEventWifiRssiUpdate(I)V
    invoke-static {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$900(Lcom/mediatek/rns/RnsServiceImpl;I)V

    goto :goto_0

    .line 748
    :sswitch_2
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleEventApplyWifiCallSettings()V
    invoke-static {v0}, Lcom/mediatek/rns/RnsServiceImpl;->access$1000(Lcom/mediatek/rns/RnsServiceImpl;)V

    goto :goto_0

    .line 751
    :sswitch_3
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventWifiDisconnect()V

    goto :goto_0

    .line 741
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0xa -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method
