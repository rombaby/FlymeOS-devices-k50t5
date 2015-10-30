.class Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field private itemActionProvider:Llenovo/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Lcom/lenovo/internal/view/SupportMenuInflater;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/view/SupportMenuInflater;Landroid/view/Menu;)V
    .locals 0
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->this$0:Lcom/lenovo/internal/view/SupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p2, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 333
    invoke-virtual {p0}, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->resetGroup()V

    .line 334
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;)Llenovo/view/ActionProvider;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Llenovo/view/ActionProvider;

    return-object v0
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 1
    .param p1, "shortcutString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 419
    if-nez p1, :cond_0

    .line 422
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 501
    .local p2, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->this$0:Lcom/lenovo/internal/view/SupportMenuInflater;

    # getter for: Lcom/lenovo/internal/view/SupportMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/internal/view/SupportMenuInflater;->access$100(Lcom/lenovo/internal/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 502
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 503
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 507
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v3

    .line 504
    :catch_0
    move-exception v2

    .line 505
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SupportMenuInflater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot instantiate class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 427
    iget-boolean v2, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemVisible:Z

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    iget v2, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemCheckable:I

    if-lt v2, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    iget v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemIconResId:I

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-char v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    iget-char v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 436
    iget v2, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v2, :cond_0

    .line 437
    iget v2, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 441
    iget-object v2, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->this$0:Lcom/lenovo/internal/view/SupportMenuInflater;

    # getter for: Lcom/lenovo/internal/view/SupportMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/internal/view/SupportMenuInflater;->access$100(Lcom/lenovo/internal/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 442
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 427
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 445
    :cond_2
    new-instance v2, Lcom/lenovo/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->this$0:Lcom/lenovo/internal/view/SupportMenuInflater;

    # invokes: Lcom/lenovo/internal/view/SupportMenuInflater;->getRealOwner()Ljava/lang/Object;
    invoke-static {v4}, Lcom/lenovo/internal/view/SupportMenuInflater;->access$400(Lcom/lenovo/internal/view/SupportMenuInflater;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Lcom/lenovo/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 449
    :cond_3
    iget v2, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v4, 0x2

    if-lt v2, v4, :cond_4

    .line 450
    instance-of v2, p1, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_8

    move-object v2, p1

    .line 451
    check-cast v2, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2, v3}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 457
    :cond_4
    :goto_1
    const/4 v1, 0x0

    .line 458
    .local v1, "actionViewSpecified":Z
    iget-object v2, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 459
    iget-object v2, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    # getter for: Lcom/lenovo/internal/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    invoke-static {}, Lcom/lenovo/internal/view/SupportMenuInflater;->access$500()[Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->this$0:Lcom/lenovo/internal/view/SupportMenuInflater;

    # getter for: Lcom/lenovo/internal/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;
    invoke-static {v4}, Lcom/lenovo/internal/view/SupportMenuInflater;->access$600(Lcom/lenovo/internal/view/SupportMenuInflater;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 461
    .local v0, "actionView":Landroid/view/View;
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 462
    const/4 v1, 0x1

    .line 464
    .end local v0    # "actionView":Landroid/view/View;
    :cond_5
    iget v2, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v2, :cond_6

    .line 465
    if-nez v1, :cond_9

    .line 466
    iget v2, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 467
    const/4 v1, 0x1

    .line 473
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Llenovo/view/ActionProvider;

    if-eqz v2, :cond_7

    .line 474
    instance-of v2, p1, Lcom/lenovo/internal/view/SupportMenuItem;

    if-eqz v2, :cond_7

    .line 475
    check-cast p1, Lcom/lenovo/internal/view/SupportMenuItem;

    .end local p1    # "item":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Llenovo/view/ActionProvider;

    invoke-interface {p1, v2}, Lcom/lenovo/internal/view/SupportMenuItem;->setSupportActionProvider(Llenovo/view/ActionProvider;)Lcom/lenovo/internal/view/SupportMenuItem;

    .line 479
    :cond_7
    return-void

    .line 452
    .end local v1    # "actionViewSpecified":Z
    .restart local p1    # "item":Landroid/view/MenuItem;
    :cond_8
    instance-of v2, p1, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;

    if-eqz v2, :cond_4

    move-object v2, p1

    .line 453
    check-cast v2, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;

    invoke-virtual {v2, v3}, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    goto :goto_1

    .line 469
    .restart local v1    # "actionViewSpecified":Z
    :cond_9
    const-string v2, "SupportMenuInflater"

    const-string v3, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public addItem()V
    .locals 5

    .prologue
    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 483
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 484
    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 6

    .prologue
    .line 487
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 488
    iget-object v1, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v2, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupId:I

    iget v3, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemId:I

    iget v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v5, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 489
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 490
    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 349
    iget-object v1, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->this$0:Lcom/lenovo/internal/view/SupportMenuInflater;

    # getter for: Lcom/lenovo/internal/view/SupportMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/internal/view/SupportMenuInflater;->access$100(Lcom/lenovo/internal/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/lenovo/internal/R$styleable;->MenuGroup:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 351
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupId:I

    .line 352
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 354
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 355
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 357
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 358
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 360
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 361
    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v8, 0xb

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 367
    iget-object v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->this$0:Lcom/lenovo/internal/view/SupportMenuInflater;

    # getter for: Lcom/lenovo/internal/view/SupportMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/internal/view/SupportMenuInflater;->access$100(Lcom/lenovo/internal/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v4

    sget-object v7, Lcom/lenovo/internal/R$styleable;->MenuItem:[I

    invoke-virtual {v4, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 370
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemId:I

    .line 371
    const/4 v4, 0x5

    iget v7, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupCategory:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 372
    .local v1, "category":I
    const/4 v4, 0x6

    iget v7, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupOrder:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 373
    .local v3, "order":I
    const/high16 v4, -0x10000

    and-int/2addr v4, v1

    const v7, 0xffff

    and-int/2addr v7, v3

    or-int/2addr v4, v7

    iput v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 375
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 376
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 377
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 378
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 380
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 382
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 384
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 391
    :goto_1
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemChecked:Z

    .line 392
    const/4 v4, 0x4

    iget-boolean v7, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 393
    iget-boolean v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 394
    const/16 v4, 0xd

    const/4 v7, -0x1

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    .line 395
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 396
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 397
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 398
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 400
    iget-object v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v4, :cond_2

    move v2, v5

    .line 401
    .local v2, "hasActionProvider":Z
    :goto_2
    if-eqz v2, :cond_3

    iget v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 402
    iget-object v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    # getter for: Lcom/lenovo/internal/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    invoke-static {}, Lcom/lenovo/internal/view/SupportMenuInflater;->access$200()[Ljava/lang/Class;

    move-result-object v5

    iget-object v7, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->this$0:Lcom/lenovo/internal/view/SupportMenuInflater;

    # getter for: Lcom/lenovo/internal/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;
    invoke-static {v7}, Lcom/lenovo/internal/view/SupportMenuInflater;->access$300(Lcom/lenovo/internal/view/SupportMenuInflater;)[Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v4, v5, v7}, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llenovo/view/ActionProvider;

    iput-object v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Llenovo/view/ActionProvider;

    .line 413
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 415
    iput-boolean v6, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 416
    return-void

    .end local v2    # "hasActionProvider":Z
    :cond_0
    move v4, v6

    .line 384
    goto :goto_0

    .line 388
    :cond_1
    iget v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupCheckable:I

    iput v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemCheckable:I

    goto :goto_1

    :cond_2
    move v2, v6

    .line 400
    goto :goto_2

    .line 406
    .restart local v2    # "hasActionProvider":Z
    :cond_3
    if-eqz v2, :cond_4

    .line 407
    const-string v4, "SupportMenuInflater"

    const-string v5, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Llenovo/view/ActionProvider;

    goto :goto_3
.end method

.method public resetGroup()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 337
    iput v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupId:I

    .line 338
    iput v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 339
    iput v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 340
    iput v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 341
    iput-boolean v1, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 342
    iput-boolean v1, p0, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 343
    return-void
.end method
