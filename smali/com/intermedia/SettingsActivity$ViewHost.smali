.class Lcom/intermedia/SettingsActivity$ViewHost;
.super Ljava/lang/Object;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHost"
.end annotation


# instance fields
.field avatarImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0194
    .end annotation
.end field

.field checkDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lbutterknife/BindDrawable;
        value = 0x7f0800d0
    .end annotation
.end field

.field container:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0195
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field hqRedColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f060089
    .end annotation
.end field

.field logoutButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0196
    .end annotation
.end field

.field questionDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lbutterknife/BindDrawable;
        value = 0x7f0800de
    .end annotation
.end field

.field referralButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0197
    .end annotation
.end field

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0199
    .end annotation
.end field

.field tooltipButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a019a
    .end annotation
.end field

.field unableToLoadImageString:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f110039
    .end annotation
.end field

.field usernameTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a019b
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 246
    iput-object p2, p0, Lcom/intermedia/SettingsActivity$ViewHost;->context:Landroid/content/Context;

    .line 247
    iget-object p1, p0, Lcom/intermedia/SettingsActivity$ViewHost;->tooltipButton:Landroid/widget/Button;

    new-instance p2, Lcom/intermedia/SettingsActivity$ViewHost$$Lambda$0;

    invoke-direct {p2, p0}, Lcom/intermedia/SettingsActivity$ViewHost$$Lambda$0;-><init>(Lcom/intermedia/SettingsActivity$ViewHost;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/intermedia/SettingsActivity$ViewHost;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Lcom/intermedia/SettingsActivity$ViewHost;->showAddedReferralDialog()V

    return-void
.end method

.method private showAddedReferralDialog()V
    .locals 3

    .line 256
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/intermedia/SettingsActivity$ViewHost;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110071

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110043

    .line 257
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110022

    const/4 v2, 0x0

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showTooltipDialog()V
    .locals 3

    .line 262
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/intermedia/SettingsActivity$ViewHost;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110071

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110010

    .line 263
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110022

    const/4 v2, 0x0

    .line 264
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method final synthetic lambda$new$0$SettingsActivity$ViewHost(Landroid/view/View;)V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/intermedia/SettingsActivity$ViewHost;->showTooltipDialog()V

    return-void
.end method

.method setReferralButton(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/intermedia/SettingsActivity$ViewHost;->questionDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/intermedia/SettingsActivity$ViewHost;->checkDrawable:Landroid/graphics/drawable/Drawable;

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/intermedia/SettingsActivity$ViewHost;->referralButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
