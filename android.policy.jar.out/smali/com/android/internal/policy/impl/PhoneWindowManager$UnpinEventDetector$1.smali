.class Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector;)V
    .locals 0

    .prologue
    .line 8060
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 8063
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector;

    monitor-enter v2

    .line 8064
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector;->access$3500(Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector;)I

    move-result v1

    if-nez v1, :cond_0

    .line 8066
    const-string v1, "WindowManager.UnpinEventDetector"

    const-string v3, "unpin state has been changed to idle, do nothing"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8067
    monitor-exit v2

    .line 8080
    :goto_0
    return-void

    .line 8069
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector;

    const/4 v3, 0x2

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector;->setState(I)V
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector;->access$3600(Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector;I)V

    .line 8070
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8072
    const-string v1, "WindowManager.UnpinEventDetector"

    const-string v2, "dispatch unpin event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8074
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$UnpinEventDetector;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->onUnpinEvent()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8079
    :goto_1
    const-string v1, "WindowManager.UnpinEventDetector"

    const-string v2, "dispatch unpin event complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8070
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 8075
    :catch_0
    move-exception v0

    .line 8076
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager.UnpinEventDetector"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
