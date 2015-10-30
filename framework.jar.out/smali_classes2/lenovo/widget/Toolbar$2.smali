.class Llenovo/widget/Toolbar$2;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/Toolbar;


# direct methods
.method constructor <init>(Llenovo/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Llenovo/widget/Toolbar$2;->this$0:Llenovo/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Llenovo/widget/Toolbar$2;->this$0:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->showOverflowMenu()Z

    .line 176
    return-void
.end method
