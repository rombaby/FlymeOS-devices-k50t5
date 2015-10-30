.class public Lcom/android/server/wm/WindowManagerService$MWWmsCallback;
.super Lcom/mediatek/common/multiwindow/IMWWmsCallback$Stub;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MWWmsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .prologue
    .line 13898
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/mediatek/common/multiwindow/IMWWmsCallback$Stub;-><init>()V

    .line 13899
    return-void
.end method


# virtual methods
.method public enableFocusedFrame(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 13984
    const/4 v0, 0x0

    .line 13985
    .local v0, "needUpdate":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mResizingFrame:Lcom/android/server/wm/ResizingFrame;
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$2800(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v2

    monitor-enter v2

    .line 13986
    :try_start_0
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableFocusedFrame "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13987
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mResizingFrame:Lcom/android/server/wm/ResizingFrame;
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$2800(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ResizingFrame;->enableMotion(Z)V

    .line 13988
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mResizingFrame:Lcom/android/server/wm/ResizingFrame;
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$2800(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ResizingFrame;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13989
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mResizingFrame:Lcom/android/server/wm/ResizingFrame;
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$2800(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ResizingFrame;->copyBounds2Box()V

    .line 13990
    const/4 v0, 0x1

    .line 13992
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13993
    if-eqz v0, :cond_1

    .line 13994
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 13996
    :cond_1
    return-void

    .line 13992
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public miniMaxTask(I)V
    .locals 11
    .param p1, "taskId"    # I

    .prologue
    .line 14000
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string v8, "android.permission.MANAGE_APP_TOKENS"

    const-string v9, "miniMaxTask()"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 14002
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 14005
    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 14006
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 14007
    .local v4, "task":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_1

    iget-object v7, v4, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    if-nez v7, :cond_2

    .line 14008
    :cond_1
    monitor-exit v8

    .line 14022
    :goto_0
    return-void

    .line 14010
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 14011
    .local v2, "origId":J
    iget-object v1, v4, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 14012
    .local v1, "appToken":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "activityNdx":I
    :goto_1
    if-ltz v0, :cond_4

    .line 14013
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v7, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 14014
    .local v6, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "winNdx":I
    :goto_2
    if-ltz v5, :cond_3

    .line 14015
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    # invokes: Lcom/android/server/wm/WindowManagerService;->miniMaxWindow(Lcom/android/server/wm/WindowState;)V
    invoke-static {v9, v7}, Lcom/android/server/wm/WindowManagerService;->access$2900(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V

    .line 14014
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 14012
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 14019
    .end local v5    # "winNdx":I
    .end local v6    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_4
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v7, :cond_5

    const-string v7, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "miniMax taskId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14020
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14021
    monitor-exit v8

    goto :goto_0

    .end local v0    # "activityNdx":I
    .end local v1    # "appToken":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v2    # "origId":J
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public moveFloatingWindow(II)V
    .locals 5
    .param p1, "disX"    # I
    .param p2, "disY"    # I

    .prologue
    .line 13906
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_1

    .line 13922
    :cond_0
    :goto_0
    return-void

    .line 13910
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_0

    .line 13914
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mResizingFrame:Lcom/android/server/wm/ResizingFrame;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$2800(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v3

    monitor-enter v3

    .line 13915
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 13916
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mResizingFrame:Lcom/android/server/wm/ResizingFrame;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$2800(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ResizingFrame;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 13917
    mul-int/lit8 v2, p1, -0x1

    mul-int/lit8 v4, p2, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 13918
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mResizingFrame:Lcom/android/server/wm/ResizingFrame;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$2800(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ResizingFrame;->updateBoundary(Landroid/graphics/Rect;)V

    .line 13919
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13921
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    goto :goto_0

    .line 13919
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public resizeFloatingWindow(III)V
    .locals 7
    .param p1, "direction"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 13929
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_1

    .line 13979
    :cond_0
    :goto_0
    return-void

    .line 13933
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_0

    .line 13937
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mResizingFrame:Lcom/android/server/wm/ResizingFrame;
    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->access$2800(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ResizingFrame;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 13939
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v1, v4, Landroid/view/DisplayInfo;->appWidth:I

    .line 13940
    .local v1, "appWidth":I
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v0, v4, Landroid/view/DisplayInfo;->appHeight:I

    .line 13942
    .local v0, "appHeight":I
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 13943
    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, p3

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 13944
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v5, v0, 0x3

    if-ge v4, v5, :cond_6

    .line 13945
    iget v4, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 13950
    :cond_2
    :goto_1
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 13951
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p3

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 13952
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v5, v0, 0x3

    if-ge v4, v5, :cond_7

    .line 13953
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v5, v0, 0x3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 13958
    :cond_3
    :goto_2
    and-int/lit8 v4, p1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 13959
    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, p2

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 13960
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v5, v1, 0x3

    if-ge v4, v5, :cond_8

    .line 13961
    iget v4, v2, Landroid/graphics/Rect;->left:I

    div-int/lit8 v5, v1, 0x3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 13966
    :cond_4
    :goto_3
    and-int/lit8 v4, p1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    .line 13967
    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, p2

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 13968
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v5, v1, 0x3

    if-ge v4, v5, :cond_9

    .line 13969
    iget v4, v2, Landroid/graphics/Rect;->right:I

    div-int/lit8 v5, v1, 0x3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 13975
    :cond_5
    :goto_4
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mResizingFrame:Lcom/android/server/wm/ResizingFrame;
    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->access$2800(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/ResizingFrame;->updateBoundary(Landroid/graphics/Rect;)V

    .line 13977
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    goto/16 :goto_0

    .line 13946
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_2

    .line 13947
    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v5, v0

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 13954
    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 13955
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v5, v0

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 13962
    :cond_8
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 13963
    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v1

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 13970
    :cond_9
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v4, v1, :cond_5

    .line 13971
    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    goto :goto_4
.end method
