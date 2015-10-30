.class final Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable2;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConsumeBatchedInputRunnable2"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    .line 6669
    iput-object p1, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable2;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6672
    iget-object v0, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable2;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewRootImpl;->doConsumeBatchedInput(J)V

    .line 6673
    return-void
.end method
