.class Lcom/android/server/display/brightnesscontroller/LightAdjuestCore$1;
.super Ljava/lang/Object;
.source "LightAdjuestCore.java"

# interfaces
.implements Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->initCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;


# direct methods
.method constructor <init>(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore$1;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateData(F)V
    .locals 4
    .param p1, "lux"    # F

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore$1;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    # setter for: Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mEnviromentalLightLevel:F
    invoke-static {v1, p1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->access$002(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;F)F

    .line 141
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore$1;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->access$100(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;)Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore$1;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mEnviromentalLightLevel:F
    invoke-static {v2}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->access$000(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->getBrightnessValue(F)I

    move-result v0

    .line 142
    .local v0, "backlightvalue":I
    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1-Env--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore$1;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mEnviromentalLightLevel:F
    invoke-static {v3}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->access$000(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LUX,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Value--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore$1;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->isLockedBrightness()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore$1;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->setBacklight(FZ)V
    invoke-static {v1, p1, v2}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->access$300(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;FZ)V

    .line 146
    :cond_0
    return-void
.end method

.method public updateDataImmediately(F)V
    .locals 4
    .param p1, "lux"    # F

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore$1;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    # setter for: Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mEnviromentalLightLevel:F
    invoke-static {v1, p1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->access$002(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;F)F

    .line 151
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore$1;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->access$100(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;)Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore$1;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mEnviromentalLightLevel:F
    invoke-static {v2}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->access$000(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->getBrightnessValue(F)I

    move-result v0

    .line 152
    .local v0, "backlightvalue":I
    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2-Env--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore$1;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mEnviromentalLightLevel:F
    invoke-static {v3}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->access$000(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LUX,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Value--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore$1;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->setBacklight(FZ)V
    invoke-static {v1, p1, v2}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->access$300(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;FZ)V

    .line 154
    return-void
.end method
