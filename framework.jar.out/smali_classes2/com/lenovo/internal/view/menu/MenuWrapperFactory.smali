.class public final Lcom/lenovo/internal/view/menu/MenuWrapperFactory;
.super Ljava/lang/Object;
.source "MenuWrapperFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static createMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "frameworkMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 38
    new-instance v0, Lcom/lenovo/internal/view/menu/MenuItemWrapperJB;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/view/menu/MenuItemWrapperJB;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public static createMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 1
    .param p0, "frameworkMenu"    # Landroid/view/Menu;

    .prologue
    .line 34
    new-instance v0, Lcom/lenovo/internal/view/menu/MenuWrapperICS;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/view/menu/MenuWrapperICS;-><init>(Landroid/view/Menu;)V

    return-object v0
.end method

.method public static createSupportMenuItemWrapper(Landroid/view/MenuItem;)Lcom/lenovo/internal/view/SupportMenuItem;
    .locals 1
    .param p0, "frameworkMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 52
    new-instance v0, Lcom/lenovo/internal/view/menu/MenuItemWrapperJB;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/view/menu/MenuItemWrapperJB;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public static createSupportMenuWrapper(Landroid/view/Menu;)Lcom/lenovo/internal/view/SupportMenu;
    .locals 1
    .param p0, "frameworkMenu"    # Landroid/view/Menu;

    .prologue
    .line 42
    new-instance v0, Lcom/lenovo/internal/view/menu/MenuWrapperICS;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/view/menu/MenuWrapperICS;-><init>(Landroid/view/Menu;)V

    return-object v0
.end method

.method public static createSupportSubMenuWrapper(Landroid/view/SubMenu;)Lcom/lenovo/internal/view/SupportSubMenu;
    .locals 1
    .param p0, "frameworkSubMenu"    # Landroid/view/SubMenu;

    .prologue
    .line 47
    new-instance v0, Lcom/lenovo/internal/view/menu/SubMenuWrapperICS;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/view/menu/SubMenuWrapperICS;-><init>(Landroid/view/SubMenu;)V

    return-object v0
.end method
