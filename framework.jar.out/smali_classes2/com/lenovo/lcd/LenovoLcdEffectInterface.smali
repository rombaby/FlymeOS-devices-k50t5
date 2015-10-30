.class public final Lcom/lenovo/lcd/LenovoLcdEffectInterface;
.super Ljava/lang/Object;
.source "LenovoLcdEffectInterface.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LenovoLcdEffect"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "lenovo_lcd"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLcdFunctionSupport(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->nativeIsLcdFunctionSupport(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static native nativeIsLcdFunctionSupport(Ljava/lang/String;)Z
.end method

.method public static native nativeSetCABC(I)V
.end method

.method public static native nativeSetGamma(I)V
.end method

.method public static native nativeSetIE(I)V
.end method

.method public static native nativeSetInverseColor(I)V
.end method

.method public static native nativesetCustomMode(II)V
.end method

.method public static setCABC(I)V
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 22
    const-string v0, "LenovoLcdEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCABC mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {p0}, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->nativeSetCABC(I)V

    .line 24
    return-void
.end method

.method public static setCustomMode(II)V
    .locals 0
    .param p0, "a_eindex"    # I
    .param p1, "index"    # I

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->nativesetCustomMode(II)V

    .line 48
    return-void
.end method

.method public static setGamma(I)V
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 32
    const-string v0, "LenovoLcdEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetGamma mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p0}, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->nativeSetGamma(I)V

    .line 34
    return-void
.end method

.method public static setIE(I)V
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 37
    const-string v0, "LenovoLcdEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetIE mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {p0}, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->nativeSetIE(I)V

    .line 39
    return-void
.end method

.method public static setInverseColor(I)V
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 27
    const-string v0, "LenovoLcdEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInverseColor mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {p0}, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->nativeSetInverseColor(I)V

    .line 29
    return-void
.end method
