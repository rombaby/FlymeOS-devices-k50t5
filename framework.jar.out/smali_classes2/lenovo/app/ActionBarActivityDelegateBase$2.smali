.class Llenovo/app/ActionBarActivityDelegateBase$2;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/app/ActionBarActivityDelegateBase;->installSubDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/app/ActionBarActivityDelegateBase;


# direct methods
.method constructor <init>(Llenovo/app/ActionBarActivityDelegateBase;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegateBase$2;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 320
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$2;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    # invokes: Llenovo/app/ActionBarActivityDelegateBase;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    invoke-static {v0, p2}, Llenovo/app/ActionBarActivityDelegateBase;->access$300(Llenovo/app/ActionBarActivityDelegateBase;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p2

    .line 322
    return-object p2
.end method
