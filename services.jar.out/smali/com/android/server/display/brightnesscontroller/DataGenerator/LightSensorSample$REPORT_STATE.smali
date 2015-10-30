.class final enum Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;
.super Ljava/lang/Enum;
.source "LightSensorSample.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "REPORT_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

.field public static final enum REPORT_FIRST_DATA:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

.field public static final enum REPORT_NORMAL_DATA:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

.field public static final enum REPORT_SHUTDOWN:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

.field public static final enum REPORT_STATE_INVALID:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 503
    new-instance v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    const-string v1, "REPORT_STATE_INVALID"

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_STATE_INVALID:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    .line 504
    new-instance v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    const-string v1, "REPORT_FIRST_DATA"

    invoke-direct {v0, v1, v3}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_FIRST_DATA:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    .line 505
    new-instance v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    const-string v1, "REPORT_NORMAL_DATA"

    invoke-direct {v0, v1, v4}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_NORMAL_DATA:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    .line 506
    new-instance v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    const-string v1, "REPORT_SHUTDOWN"

    invoke-direct {v0, v1, v5}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_SHUTDOWN:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    .line 502
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    sget-object v1, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_STATE_INVALID:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_FIRST_DATA:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_NORMAL_DATA:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_SHUTDOWN:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->$VALUES:[Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 502
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 502
    const-class v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;
    .locals 1

    .prologue
    .line 502
    sget-object v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->$VALUES:[Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    invoke-virtual {v0}, [Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$REPORT_STATE;

    return-object v0
.end method
