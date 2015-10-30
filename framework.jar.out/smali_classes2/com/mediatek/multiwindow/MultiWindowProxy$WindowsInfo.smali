.class public Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
.super Ljava/lang/Object;
.source "MultiWindowProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/multiwindow/MultiWindowProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WindowsInfo"
.end annotation


# instance fields
.field public phoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

.field final synthetic this$0:Lcom/mediatek/multiwindow/MultiWindowProxy;

.field public token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/mediatek/multiwindow/MultiWindowProxy;Landroid/os/IBinder;Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;)V
    .locals 0
    .param p2, "iBinder"    # Landroid/os/IBinder;
    .param p3, "iMWPhoneWindowCallback"    # Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    .prologue
    .line 920
    iput-object p1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;->this$0:Lcom/mediatek/multiwindow/MultiWindowProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    iput-object p2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;->token:Landroid/os/IBinder;

    .line 922
    iput-object p3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;->phoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    .line 923
    return-void
.end method
