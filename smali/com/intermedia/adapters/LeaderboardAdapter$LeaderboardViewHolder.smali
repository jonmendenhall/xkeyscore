.class public final Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;
.super Lcom/intermedia/viewholders/HQViewHolder;
.source "LeaderboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/adapters/LeaderboardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LeaderboardViewHolder"
.end annotation


# instance fields
.field avatarImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00e8
    .end annotation
.end field

.field balanceTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00e9
    .end annotation
.end field

.field rankTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00ef
    .end annotation
.end field

.field final synthetic this$0:Lcom/intermedia/adapters/LeaderboardAdapter;

.field usernameTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00f2
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/intermedia/adapters/LeaderboardAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/intermedia/adapters/LeaderboardAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 162
    iput-object p1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;->this$0:Lcom/intermedia/adapters/LeaderboardAdapter;

    .line 163
    invoke-direct {p0, p2}, Lcom/intermedia/viewholders/HQViewHolder;-><init>(Landroid/view/View;)V

    .line 164
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

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

    .line 169
    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/intermedia/util/ObjectUtils;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 171
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/intermedia/model/Leader;

    .line 173
    iget-object v0, p0, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p2}, Lcom/intermedia/model/Leader;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;->avatarImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 174
    iget-object v0, p0, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;->balanceTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/intermedia/model/Leader;->getTotal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;->rankTextView:Landroid/widget/TextView;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/intermedia/model/Leader;->getUsername()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
