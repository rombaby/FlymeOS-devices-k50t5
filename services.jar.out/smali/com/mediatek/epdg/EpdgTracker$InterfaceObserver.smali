.class Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "EpdgTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epdg/EpdgTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgTracker;


# direct methods
.method private constructor <init>(Lcom/mediatek/epdg/EpdgTracker;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/epdg/EpdgTracker;Lcom/mediatek/epdg/EpdgTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/epdg/EpdgTracker;
    .param p2, "x1"    # Lcom/mediatek/epdg/EpdgTracker$1;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;-><init>(Lcom/mediatek/epdg/EpdgTracker;)V

    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 222
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 217
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 227
    return-void
.end method
