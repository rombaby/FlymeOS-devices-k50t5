.class Lcom/android/internal/telephony/dataconnection/DataConnection$2;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    .prologue
    .line 3264
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 3267
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addressRemoved:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3269
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInterfaceName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$8300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInterfaceName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$8300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3270
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsBsp:Z
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$9600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3272
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mGsmDCTExt:Lcom/mediatek/common/telephony/IGsmDCTExt;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$7000(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/mediatek/common/telephony/IGsmDCTExt;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/mediatek/common/telephony/IGsmDCTExt;->getIPv6Valid(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 3280
    .local v2, "valid":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 3281
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RA is failed or life time expired, valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3282
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->onAddressRemoved()V
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$9700(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3286
    .end local v2    # "valid":J
    :cond_1
    return-void

    .line 3274
    :catch_0
    move-exception v0

    .line 3275
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v4, "getIPv6Valid fail!"

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 3276
    const-wide/16 v2, -0x3e8

    .line 3277
    .restart local v2    # "valid":J
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
