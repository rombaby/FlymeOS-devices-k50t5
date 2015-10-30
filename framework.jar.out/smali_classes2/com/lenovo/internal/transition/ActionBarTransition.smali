.class public Lcom/lenovo/internal/transition/ActionBarTransition;
.super Ljava/lang/Object;
.source "ActionBarTransition.java"


# static fields
.field private static final TRANSITIONS_ENABLED:Z = false

.field private static final TRANSITION_DURATION:I = 0x78

.field private static final sTransition:Landroid/transition/Transition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/internal/transition/ActionBarTransition;->sTransition:Landroid/transition/Transition;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    return-void
.end method
