.class public Lcom/intermedia/game/GameViewHost;
.super Ljava/lang/Object;
.source "GameViewHost.java"


# instance fields
.field public final gameContainer:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field lifeHeartImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00f7
    .end annotation
.end field

.field whiteColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f0600bd
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/intermedia/game/GameViewHost;->gameContainer:Landroid/view/View;

    .line 23
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 24
    iget-object p1, p0, Lcom/intermedia/game/GameViewHost;->lifeHeartImageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/intermedia/game/GameViewHost;->whiteColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
