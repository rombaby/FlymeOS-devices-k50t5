.class public Lcom/android/server/display/brightnesscontroller/SettingsCache;
.super Ljava/lang/Object;
.source "SettingsCache.java"


# static fields
.field public static final INVALID_INDEX_VALUE:I = -0x1

.field public static final PROFILE_DAYTME:I = 0x0

.field public static final PROFILE_NIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SettingsCache"


# instance fields
.field private maximum_brightness_value:I

.field private minimum_brightness_value:I

.field private profile_count:I

.field private profile_index:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/SettingsCache;->init()V

    .line 21
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->profile_index:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->profile_count:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->minimum_brightness_value:I

    .line 31
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->maximum_brightness_value:I

    .line 32
    return-void
.end method


# virtual methods
.method public getProfileCount()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->profile_count:I

    return v0
.end method

.method public getProfileIndex()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->profile_index:I

    return v0
.end method

.method public get_Maximum_Brightness_Value()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->maximum_brightness_value:I

    return v0
.end method

.method public get_Minimum_Brightness_Value()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->minimum_brightness_value:I

    return v0
.end method

.method public resetSettings()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/SettingsCache;->init()V

    .line 25
    return-void
.end method

.method public setProfileCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->profile_count:I

    if-lez v0, :cond_0

    .line 53
    iput p1, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->profile_count:I

    .line 55
    :cond_0
    return-void
.end method

.method public setProfileIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 58
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->profile_count:I

    if-ge p1, v0, :cond_0

    .line 59
    iput p1, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->profile_index:I

    .line 61
    :cond_0
    return-void
.end method

.method public setScreenBrightnessScope(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->minimum_brightness_value:I

    .line 65
    iput p2, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->maximum_brightness_value:I

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->profile_index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->profile_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->minimum_brightness_value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/brightnesscontroller/SettingsCache;->maximum_brightness_value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
