.class Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;
.super Ljava/lang/Object;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateDedicateBearerPropertyResult"
.end annotation


# instance fields
.field public newProperty:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

.field public oldProperty:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

.field public setupResult:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/DedicateBearerProperties;)V
    .locals 1
    .param p2, "curProperty"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .prologue
    .line 677
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    sget-object v0, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->SUCCESS:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    .line 678
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->oldProperty:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .line 679
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->newProperty:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .line 680
    return-void
.end method
