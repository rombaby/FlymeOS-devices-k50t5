.class public Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;
.super Ljava/lang/Object;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DedicateBearerOperationResult"
.end annotation


# instance fields
.field public failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public properties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 0
    .param p2, "perperty"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .param p3, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->properties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .line 692
    iput-object p3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 693
    return-void
.end method
