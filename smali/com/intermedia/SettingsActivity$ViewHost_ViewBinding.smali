.class public Lcom/intermedia/SettingsActivity$ViewHost_ViewBinding;
.super Ljava/lang/Object;
.source "SettingsActivity$ViewHost_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/SettingsActivity$ViewHost;


# direct methods
.method public constructor <init>(Lcom/intermedia/SettingsActivity$ViewHost;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/intermedia/SettingsActivity$ViewHost_ViewBinding;->target:Lcom/intermedia/SettingsActivity$ViewHost;

    const-string v0, "field \'avatarImageView\'"

    .line 28
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0194

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/SettingsActivity$ViewHost;->avatarImageView:Landroid/widget/ImageView;

    const-string v0, "field \'container\'"

    .line 29
    const-class v1, Landroid/view/ViewGroup;

    const v2, 0x7f0a0195

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/intermedia/SettingsActivity$ViewHost;->container:Landroid/view/ViewGroup;

    const-string v0, "field \'logoutButton\'"

    .line 30
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0196

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/SettingsActivity$ViewHost;->logoutButton:Landroid/widget/Button;

    const-string v0, "field \'usernameTextView\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a019b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/SettingsActivity$ViewHost;->usernameTextView:Landroid/widget/TextView;

    const-string v0, "field \'referralButton\'"

    .line 32
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0197

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/SettingsActivity$ViewHost;->referralButton:Landroid/widget/Button;

    const-string v0, "field \'toolbar\'"

    .line 33
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f0a0199

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/intermedia/SettingsActivity$ViewHost;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'tooltipButton\'"

    .line 34
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a019a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/SettingsActivity$ViewHost;->tooltipButton:Landroid/widget/Button;

    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 37
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060089

    .line 38
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/SettingsActivity$ViewHost;->hqRedColor:I

    const v1, 0x7f0800d0

    .line 39
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p1, Lcom/intermedia/SettingsActivity$ViewHost;->checkDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0800de

    .line 40
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p1, Lcom/intermedia/SettingsActivity$ViewHost;->questionDrawable:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f110039

    .line 41
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/intermedia/SettingsActivity$ViewHost;->unableToLoadImageString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/intermedia/SettingsActivity$ViewHost_ViewBinding;->target:Lcom/intermedia/SettingsActivity$ViewHost;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/intermedia/SettingsActivity$ViewHost_ViewBinding;->target:Lcom/intermedia/SettingsActivity$ViewHost;

    .line 51
    iput-object v1, v0, Lcom/intermedia/SettingsActivity$ViewHost;->avatarImageView:Landroid/widget/ImageView;

    .line 52
    iput-object v1, v0, Lcom/intermedia/SettingsActivity$ViewHost;->container:Landroid/view/ViewGroup;

    .line 53
    iput-object v1, v0, Lcom/intermedia/SettingsActivity$ViewHost;->logoutButton:Landroid/widget/Button;

    .line 54
    iput-object v1, v0, Lcom/intermedia/SettingsActivity$ViewHost;->usernameTextView:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/intermedia/SettingsActivity$ViewHost;->referralButton:Landroid/widget/Button;

    .line 56
    iput-object v1, v0, Lcom/intermedia/SettingsActivity$ViewHost;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 57
    iput-object v1, v0, Lcom/intermedia/SettingsActivity$ViewHost;->tooltipButton:Landroid/widget/Button;

    return-void
.end method
