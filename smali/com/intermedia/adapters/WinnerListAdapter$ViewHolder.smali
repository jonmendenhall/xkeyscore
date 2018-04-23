.class final Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;
.super Lcom/intermedia/viewholders/HQViewHolder;
.source "WinnerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/adapters/WinnerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewHolder"
.end annotation


# instance fields
.field winnerAvatar:Lde/hdodenhof/circleimageview/CircleImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01f5
    .end annotation
.end field

.field winnerContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01f8
    .end annotation
.end field

.field winnerName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01f6
    .end annotation
.end field

.field winnerPrize:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01f7
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/intermedia/viewholders/HQViewHolder;-><init>(Landroid/view/View;)V

    .line 50
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public bindData(Ljava/lang/Object;I)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    check-cast p1, Lcom/intermedia/model/HQGameWinner;

    invoke-static {p1}, Lcom/intermedia/util/ObjectUtils;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/model/HQGameWinner;

    .line 57
    iget-object v0, p0, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;->winnerName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/intermedia/model/HQGameWinner;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;->winnerPrize:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/intermedia/model/HQGameWinner;->getPrize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p1}, Lcom/intermedia/model/HQGameWinner;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->noFade()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;->winnerAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;->winnerContainer:Landroid/widget/LinearLayout;

    .line 66
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_1

    const/16 p2, 0x30

    goto :goto_0

    :cond_1
    const/16 p2, 0x50

    :goto_0
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 68
    iget-object p2, p0, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;->winnerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
