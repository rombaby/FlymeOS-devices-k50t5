.class public Llenovo/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/widget/ListPopupWindow$PopupScrollListener;,
        Llenovo/widget/ListPopupWindow$PopupTouchInterceptor;,
        Llenovo/widget/ListPopupWindow$ResizePopupRunnable;,
        Llenovo/widget/ListPopupWindow$ListSelectorHider;,
        Llenovo/widget/ListPopupWindow$PopupDataSetObserver;,
        Llenovo/widget/ListPopupWindow$DropDownListView;,
        Llenovo/widget/ListPopupWindow$ForwardingListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2

.field private static sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Llenovo/widget/ListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Llenovo/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Llenovo/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Llenovo/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Llenovo/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 79
    :try_start_0
    const-class v1, Llenovo/widget/PopupWindow;

    const-string v2, "setClipToScreenEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Llenovo/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void

    .line 81
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 82
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    const/4 v0, 0x0

    const v1, 0x10102ff

    invoke-direct {p0, p1, v0, v1}, Llenovo/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 201
    const v0, 0x10102ff

    invoke-direct {p0, p1, p2, v0}, Llenovo/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    .line 92
    iput v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    .line 97
    iput v1, p0, Llenovo/widget/ListPopupWindow;->mDropDownGravity:I

    .line 99
    iput-boolean v1, p0, Llenovo/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 100
    iput-boolean v1, p0, Llenovo/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 101
    const v0, 0x7fffffff

    iput v0, p0, Llenovo/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 104
    iput v1, p0, Llenovo/widget/ListPopupWindow;->mPromptPosition:I

    .line 115
    new-instance v0, Llenovo/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v0, p0, v2}, Llenovo/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Llenovo/widget/ListPopupWindow;Llenovo/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Llenovo/widget/ListPopupWindow;->mResizePopupRunnable:Llenovo/widget/ListPopupWindow$ResizePopupRunnable;

    .line 116
    new-instance v0, Llenovo/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v0, p0, v2}, Llenovo/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Llenovo/widget/ListPopupWindow;Llenovo/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Llenovo/widget/ListPopupWindow;->mTouchInterceptor:Llenovo/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 117
    new-instance v0, Llenovo/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v0, p0, v2}, Llenovo/widget/ListPopupWindow$PopupScrollListener;-><init>(Llenovo/widget/ListPopupWindow;Llenovo/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Llenovo/widget/ListPopupWindow;->mScrollListener:Llenovo/widget/ListPopupWindow$PopupScrollListener;

    .line 118
    new-instance v0, Llenovo/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v0, p0, v2}, Llenovo/widget/ListPopupWindow$ListSelectorHider;-><init>(Llenovo/widget/ListPopupWindow;Llenovo/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Llenovo/widget/ListPopupWindow;->mHideSelector:Llenovo/widget/ListPopupWindow$ListSelectorHider;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Llenovo/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 213
    iput-object p1, p0, Llenovo/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x908006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 223
    iget v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v0, :cond_0

    .line 224
    iput-boolean v3, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 229
    :cond_0
    new-instance v0, Llenovo/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3}, Llenovo/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    .line 231
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llenovo/widget/PopupWindow;->setElevation(F)V

    .line 232
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v0, v3}, Llenovo/widget/PopupWindow;->setInputMethodMode(I)V

    .line 234
    return-void
.end method

.method static synthetic access$1100(Llenovo/widget/ListPopupWindow;)Llenovo/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ListPopupWindow;

    .prologue
    .line 64
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1200(Llenovo/widget/ListPopupWindow;)Llenovo/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ListPopupWindow;

    .prologue
    .line 64
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mResizePopupRunnable:Llenovo/widget/ListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$1300(Llenovo/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ListPopupWindow;

    .prologue
    .line 64
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Llenovo/widget/ListPopupWindow;)Llenovo/widget/ListPopupWindow$DropDownListView;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ListPopupWindow;

    .prologue
    .line 64
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method private buildDropDown()I
    .locals 20

    .prologue
    .line 1036
    const/16 v16, 0x0

    .line 1038
    .local v16, "otherHeights":I
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    if-nez v1, :cond_7

    .line 1039
    move-object/from16 v0, p0

    iget-object v8, v0, Llenovo/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1047
    .local v8, "context":Landroid/content/Context;
    new-instance v1, Llenovo/widget/ListPopupWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Llenovo/widget/ListPopupWindow$2;-><init>(Llenovo/widget/ListPopupWindow;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Llenovo/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1057
    new-instance v3, Llenovo/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Llenovo/widget/ListPopupWindow;->mModal:Z

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v3, v8, v1}, Llenovo/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    .line 1058
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1059
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Llenovo/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1061
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v3}, Llenovo/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Llenovo/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Llenovo/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Llenovo/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    new-instance v3, Llenovo/widget/ListPopupWindow$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Llenovo/widget/ListPopupWindow$3;-><init>(Llenovo/widget/ListPopupWindow;)V

    invoke-virtual {v1, v3}, Llenovo/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1081
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/ListPopupWindow;->mScrollListener:Llenovo/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v1, v3}, Llenovo/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_1

    .line 1084
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v3}, Llenovo/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1087
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    .line 1089
    .local v9, "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v13, v0, Llenovo/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1090
    .local v13, "hintView":Landroid/view/View;
    if-eqz v13, :cond_2

    .line 1093
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1094
    .local v11, "hintContainer":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1096
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v12, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1100
    .local v12, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v1, v0, Llenovo/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v1, :pswitch_data_0

    .line 1112
    const-string v1, "ListPopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid hint position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Llenovo/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 1119
    .local v19, "widthSpec":I
    const/4 v10, 0x0

    .line 1120
    .local v10, "heightSpec":I
    move/from16 v0, v19

    invoke-virtual {v13, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1122
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1123
    .restart local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v16, v1, v3

    .line 1126
    move-object v9, v11

    .line 1129
    .end local v10    # "heightSpec":I
    .end local v11    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "widthSpec":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v1, v9}, Llenovo/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1143
    .end local v8    # "context":Landroid/content/Context;
    .end local v13    # "hintView":Landroid/view/View;
    :cond_3
    :goto_2
    const/16 v17, 0x0

    .line 1144
    .local v17, "padding":I
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v1}, Llenovo/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1145
    .local v7, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_8

    .line 1146
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1147
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int v17, v1, v3

    .line 1151
    move-object/from16 v0, p0

    iget-boolean v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v1, :cond_4

    .line 1152
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1161
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v1, v3, v4}, Llenovo/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v15

    .line 1164
    .local v15, "maxHeight":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_9

    .line 1165
    :cond_5
    add-int v1, v15, v17

    .line 1193
    :goto_4
    return v1

    .line 1057
    .end local v7    # "background":Landroid/graphics/drawable/Drawable;
    .end local v9    # "dropDownView":Landroid/view/ViewGroup;
    .end local v15    # "maxHeight":I
    .end local v17    # "padding":I
    .restart local v8    # "context":Landroid/content/Context;
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1102
    .restart local v9    # "dropDownView":Landroid/view/ViewGroup;
    .restart local v11    # "hintContainer":Landroid/widget/LinearLayout;
    .restart local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13    # "hintView":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v11, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1103
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1107
    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1108
    invoke-virtual {v11, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1131
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "dropDownView":Landroid/view/ViewGroup;
    .end local v11    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "hintView":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v1}, Llenovo/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 1132
    .restart local v9    # "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v18, v0

    .line 1133
    .local v18, "view":Landroid/view/View;
    if-eqz v18, :cond_3

    .line 1134
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1136
    .restart local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v16, v1, v3

    goto/16 :goto_2

    .line 1155
    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v18    # "view":Landroid/view/View;
    .restart local v7    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "padding":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3

    .line 1169
    .restart local v15    # "maxHeight":I
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    packed-switch v1, :pswitch_data_1

    .line 1183
    move-object/from16 v0, p0

    iget v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1187
    .local v2, "childWidthSpec":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    const/4 v3, 0x0

    const/4 v4, -0x1

    sub-int v5, v15, v16

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Llenovo/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v14

    .line 1191
    .local v14, "listContent":I
    if-lez v14, :cond_a

    add-int v16, v16, v17

    .line 1193
    :cond_a
    add-int v1, v14, v16

    goto :goto_4

    .line 1171
    .end local v2    # "childWidthSpec":I
    .end local v14    # "listContent":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1175
    .restart local v2    # "childWidthSpec":I
    goto :goto_5

    .line 1177
    .end local v2    # "childWidthSpec":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1181
    .restart local v2    # "childWidthSpec":I
    goto :goto_5

    .line 1100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1169
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static isConfirmKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 1792
    const/16 v0, 0x42

    if-eq p0, v0, :cond_0

    const/16 v0, 0x17

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removePromptView()V
    .locals 3

    .prologue
    .line 677
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 678
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 679
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 680
    check-cast v0, Landroid/view/ViewGroup;

    .line 681
    .local v0, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 684
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .locals 6
    .param p1, "clip"    # Z

    .prologue
    .line 1796
    sget-object v1, Llenovo/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 1798
    :try_start_0
    sget-object v1, Llenovo/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1803
    :cond_0
    :goto_0
    return-void

    .line 1799
    :catch_0
    move-exception v0

    .line 1800
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    .line 735
    .local v0, "list":Llenovo/widget/ListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    .line 737
    const/4 v1, 0x1

    # setter for: Llenovo/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Llenovo/widget/ListPopupWindow$DropDownListView;->access$502(Llenovo/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 739
    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->requestLayout()V

    .line 741
    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 1020
    new-instance v0, Llenovo/widget/ListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Llenovo/widget/ListPopupWindow$1;-><init>(Llenovo/widget/ListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 660
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v0}, Llenovo/widget/PopupWindow;->dismiss()V

    .line 661
    invoke-direct {p0}, Llenovo/widget/ListPopupWindow;->removePromptView()V

    .line 662
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v0, v1}, Llenovo/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 663
    iput-object v1, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    .line 664
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mResizePopupRunnable:Llenovo/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 665
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v0}, Llenovo/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v0}, Llenovo/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v0}, Llenovo/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Llenovo/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 782
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    const/4 v0, 0x0

    .line 785
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 808
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    const-wide/high16 v0, -0x8000000000000000L

    .line 811
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 795
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    const/4 v0, -0x1

    .line 798
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 821
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    const/4 v0, 0x0

    .line 824
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v0}, Llenovo/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 446
    const/4 v0, 0x0

    .line 448
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v0}, Llenovo/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Llenovo/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v0}, Llenovo/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v12, 0x14

    const/16 v11, 0x13

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 857
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 863
    const/16 v9, 0x3e

    if-eq p1, v9, :cond_8

    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Llenovo/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v9

    if-gez v9, :cond_0

    invoke-static {p1}, Llenovo/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v9

    if-nez v9, :cond_8

    .line 866
    :cond_0
    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Llenovo/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 869
    .local v4, "curIndex":I
    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v9}, Llenovo/widget/PopupWindow;->isAboveAnchor()Z

    move-result v9

    if-nez v9, :cond_4

    move v2, v7

    .line 871
    .local v2, "below":Z
    :goto_0
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 874
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 875
    .local v5, "firstItem":I
    const/high16 v6, -0x80000000

    .line 877
    .local v6, "lastItem":I
    if-eqz v0, :cond_1

    .line 878
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 879
    .local v1, "allEnabled":Z
    if-eqz v1, :cond_5

    move v5, v8

    .line 881
    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 885
    .end local v1    # "allEnabled":Z
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    if-ne p1, v11, :cond_2

    if-le v4, v5, :cond_3

    :cond_2
    if-nez v2, :cond_7

    if-ne p1, v12, :cond_7

    if-lt v4, v6, :cond_7

    .line 889
    :cond_3
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->clearListSelection()V

    .line 890
    iget-object v8, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v8, v7}, Llenovo/widget/PopupWindow;->setInputMethodMode(I)V

    .line 891
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->show()V

    .line 937
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "below":Z
    .end local v4    # "curIndex":I
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    :goto_3
    :sswitch_0
    return v7

    .restart local v4    # "curIndex":I
    :cond_4
    move v2, v8

    .line 869
    goto :goto_0

    .line 879
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "allEnabled":Z
    .restart local v2    # "below":Z
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_5
    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9, v8, v7}, Llenovo/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v5

    goto :goto_1

    .line 881
    :cond_6
    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10, v8}, Llenovo/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v6

    goto :goto_2

    .line 896
    .end local v1    # "allEnabled":Z
    :cond_7
    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    # setter for: Llenovo/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v9, v8}, Llenovo/widget/ListPopupWindow$DropDownListView;->access$502(Llenovo/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 899
    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9, p1, p2}, Llenovo/widget/ListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 902
    .local v3, "consumed":Z
    if-eqz v3, :cond_9

    .line 905
    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Llenovo/widget/PopupWindow;->setInputMethodMode(I)V

    .line 910
    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Llenovo/widget/ListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    .line 911
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->show()V

    .line 913
    sparse-switch p1, :sswitch_data_0

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "below":Z
    .end local v3    # "consumed":Z
    .end local v4    # "curIndex":I
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    :cond_8
    move v7, v8

    .line 937
    goto :goto_3

    .line 923
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "below":Z
    .restart local v3    # "consumed":Z
    .restart local v4    # "curIndex":I
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_9
    if-eqz v2, :cond_a

    if-ne p1, v12, :cond_a

    .line 926
    if-ne v4, v6, :cond_8

    goto :goto_3

    .line 929
    :cond_a
    if-nez v2, :cond_8

    if-ne p1, v11, :cond_8

    if-ne v4, v5, :cond_8

    goto :goto_3

    .line 913
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 975
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 978
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 979
    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 980
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 981
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 982
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 996
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v2

    .line 985
    .restart local v0    # "anchorView":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 986
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 987
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 988
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 990
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 991
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 996
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 951
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Llenovo/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1

    .line 952
    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1, p1, p2}, Llenovo/widget/ListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 953
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    invoke-static {p1}, Llenovo/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 956
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->dismiss()V

    .line 960
    .end local v0    # "consumed":Z
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performItemClick(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 766
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 768
    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    .line 769
    .local v1, "list":Llenovo/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {v1}, Llenovo/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 770
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v1}, Llenovo/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 771
    .local v6, "adapter":Landroid/widget/ListAdapter;
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 773
    .end local v1    # "list":Llenovo/widget/ListPopupWindow$DropDownListView;
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    .line 775
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postShow()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 564
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 243
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 244
    new-instance v0, Llenovo/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llenovo/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Llenovo/widget/ListPopupWindow;Llenovo/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Llenovo/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 248
    :cond_0
    :goto_0
    iput-object p1, p0, Llenovo/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 249
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 253
    :cond_1
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Llenovo/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    :cond_2
    return-void

    .line 245
    :cond_3
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 422
    iput-object p1, p0, Llenovo/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 423
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    .prologue
    .line 394
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v0, p1}, Llenovo/widget/PopupWindow;->setAnimationStyle(I)V

    .line 395
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 385
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v0, p1}, Llenovo/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 495
    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v1}, Llenovo/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 496
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 497
    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 498
    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-virtual {p0, p1}, Llenovo/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .param p1, "dropDownAlwaysVisible"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Llenovo/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 328
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 468
    iput p1, p0, Llenovo/widget/ListPopupWindow;->mDropDownGravity:I

    .line 469
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    .line 312
    iput-boolean p1, p0, Llenovo/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 313
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 517
    iput p1, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    .line 518
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 438
    iput p1, p0, Llenovo/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 439
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 699
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v0, p1}, Llenovo/widget/PopupWindow;->setInputMethodMode(I)V

    .line 700
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 842
    iput p1, p0, Llenovo/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 843
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 369
    iput-object p1, p0, Llenovo/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 370
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Llenovo/widget/ListPopupWindow;->mModal:Z

    .line 292
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v0, p1}, Llenovo/widget/PopupWindow;->setFocusable(Z)V

    .line 293
    return-void
.end method

.method public setOnDismissListener(Llenovo/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Llenovo/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 673
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v0, p1}, Llenovo/widget/PopupWindow;->setOnDismissListener(Llenovo/widget/PopupWindow$OnDismissListener;)V

    .line 674
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 528
    iput-object p1, p0, Llenovo/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 529
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 539
    iput-object p1, p0, Llenovo/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 540
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 268
    iput p1, p0, Llenovo/widget/ListPopupWindow;->mPromptPosition:I

    .line 269
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;

    .prologue
    .line 549
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 550
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    .line 551
    invoke-direct {p0}, Llenovo/widget/ListPopupWindow;->removePromptView()V

    .line 553
    :cond_0
    iput-object p1, p0, Llenovo/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 554
    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->show()V

    .line 557
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 718
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    .line 719
    .local v0, "list":Llenovo/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 720
    const/4 v1, 0x0

    # setter for: Llenovo/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Llenovo/widget/ListPopupWindow$DropDownListView;->access$502(Llenovo/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 721
    invoke-virtual {v0, p1}, Llenovo/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 723
    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Llenovo/widget/ListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    .line 727
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 350
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v0, p1}, Llenovo/widget/PopupWindow;->setSoftInputMode(I)V

    .line 351
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 457
    iput p1, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 459
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 485
    iput p1, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    .line 486
    return-void
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v8, -0x2

    const/4 v9, -0x1

    .line 571
    invoke-direct {p0}, Llenovo/widget/ListPopupWindow;->buildDropDown()I

    move-result v6

    .line 573
    .local v6, "height":I
    const/4 v4, 0x0

    .line 574
    .local v4, "widthSpec":I
    const/4 v5, 0x0

    .line 576
    .local v5, "heightSpec":I
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v7

    .line 578
    .local v7, "noInputMethod":Z
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v2}, Llenovo/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 579
    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v9, :cond_1

    .line 582
    const/4 v4, -0x1

    .line 589
    :goto_0
    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v2, v9, :cond_3

    .line 603
    const/4 v5, -0x1

    .line 604
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v2, v9, v9}, Llenovo/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 611
    :goto_1
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    iget-boolean v3, p0, Llenovo/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Llenovo/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_5

    :goto_2
    invoke-virtual {v2, v0}, Llenovo/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 613
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Llenovo/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 654
    :cond_0
    :goto_3
    return-void

    .line 583
    :cond_1
    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v8, :cond_2

    .line 584
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_0

    .line 586
    :cond_2
    iget v4, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    .line 605
    :cond_3
    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v2, v8, :cond_4

    .line 606
    move v5, v6

    goto :goto_1

    .line 608
    :cond_4
    iget v5, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    goto :goto_1

    :cond_5
    move v0, v1

    .line 611
    goto :goto_2

    .line 616
    :cond_6
    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v9, :cond_9

    .line 617
    const/4 v4, -0x1

    .line 626
    :goto_4
    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v2, v9, :cond_b

    .line 627
    const/4 v5, -0x1

    .line 636
    :goto_5
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v2, v4, v5}, Llenovo/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 637
    invoke-direct {p0, v0}, Llenovo/widget/ListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    .line 641
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    iget-boolean v3, p0, Llenovo/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_d

    iget-boolean v3, p0, Llenovo/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_d

    :goto_6
    invoke-virtual {v2, v0}, Llenovo/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 642
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mTouchInterceptor:Llenovo/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Llenovo/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 643
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v8, p0, Llenovo/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-virtual {v0, v1, v2, v3, v8}, Llenovo/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 645
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v9}, Llenovo/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 647
    iget-boolean v0, p0, Llenovo/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 648
    :cond_7
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->clearListSelection()V

    .line 650
    :cond_8
    iget-boolean v0, p0, Llenovo/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_0

    .line 651
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mHideSelector:Llenovo/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 619
    :cond_9
    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v8, :cond_a

    .line 620
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Llenovo/widget/PopupWindow;->setWidth(I)V

    goto :goto_4

    .line 622
    :cond_a
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    iget v3, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-virtual {v2, v3}, Llenovo/widget/PopupWindow;->setWidth(I)V

    goto :goto_4

    .line 629
    :cond_b
    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v2, v8, :cond_c

    .line 630
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    invoke-virtual {v2, v6}, Llenovo/widget/PopupWindow;->setHeight(I)V

    goto :goto_5

    .line 632
    :cond_c
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;

    iget v3, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    invoke-virtual {v2, v3}, Llenovo/widget/PopupWindow;->setHeight(I)V

    goto :goto_5

    :cond_d
    move v0, v1

    .line 641
    goto :goto_6
.end method
