.class public Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;
.super Ljava/lang/Object;
.source "StateContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightnesscontroller/StateContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnvStateFactory"
.end annotation


# static fields
.field public static final BRIGHT:I = 0x1

.field public static final DARK:I = 0x3

.field public static final DIM:I = 0x2

.field private static mBrightState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

.field private static mDeepDarkState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

.field private static mDimState:Lcom/android/server/display/brightnesscontroller/EnvlightState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/android/server/display/brightnesscontroller/BrightState;

    invoke-direct {v0}, Lcom/android/server/display/brightnesscontroller/BrightState;-><init>()V

    sput-object v0, Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;->mBrightState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .line 200
    new-instance v0, Lcom/android/server/display/brightnesscontroller/DimlightState;

    invoke-direct {v0}, Lcom/android/server/display/brightnesscontroller/DimlightState;-><init>()V

    sput-object v0, Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;->mDimState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .line 201
    new-instance v0, Lcom/android/server/display/brightnesscontroller/DeepDarkState;

    invoke-direct {v0}, Lcom/android/server/display/brightnesscontroller/DeepDarkState;-><init>()V

    sput-object v0, Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;->mDeepDarkState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnvState(I)Lcom/android/server/display/brightnesscontroller/EnvlightState;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 203
    packed-switch p0, :pswitch_data_0

    .line 211
    sget-object v0, Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;->mBrightState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    :goto_0
    return-object v0

    .line 205
    :pswitch_0
    sget-object v0, Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;->mDimState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    goto :goto_0

    .line 207
    :pswitch_1
    sget-object v0, Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;->mDeepDarkState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    goto :goto_0

    .line 209
    :pswitch_2
    sget-object v0, Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;->mBrightState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
