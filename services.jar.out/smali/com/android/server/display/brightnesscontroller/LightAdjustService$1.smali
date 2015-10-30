.class Lcom/android/server/display/brightnesscontroller/LightAdjustService$1;
.super Ljava/lang/Object;
.source "LightAdjustService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightnesscontroller/LightAdjustService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;


# direct methods
.method constructor <init>(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$1;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTwilightStateChanged()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$1;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # invokes: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->updateMode()V
    invoke-static {v0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$100(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V

    .line 178
    return-void
.end method
