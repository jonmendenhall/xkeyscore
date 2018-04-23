.class public final Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;
.super Lcom/intermedia/viewholders/HQViewHolder;
.source "LeaderboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/adapters/LeaderboardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TopThreeLeadersViewHolder"
.end annotation


# instance fields
.field firstLeaderBalanceTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00bb
    .end annotation
.end field

.field firstLeaderImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00bd
    .end annotation
.end field

.field firstLeaderUsernameTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00be
    .end annotation
.end field

.field secondLeaderBalanceTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0172
    .end annotation
.end field

.field secondLeaderImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0174
    .end annotation
.end field

.field secondLeaderUsernameTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0175
    .end annotation
.end field

.field thirdLeaderBalanceTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01c7
    .end annotation
.end field

.field thirdLeaderImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01c9
    .end annotation
.end field

.field thirdLeaderUsernameTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01ca
    .end annotation
.end field

.field final synthetic this$0:Lcom/intermedia/adapters/LeaderboardAdapter;


# direct methods
.method constructor <init>(Lcom/intermedia/adapters/LeaderboardAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/intermedia/adapters/LeaderboardAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 130
    iput-object p1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->this$0:Lcom/intermedia/adapters/LeaderboardAdapter;

    .line 131
    invoke-direct {p0, p2}, Lcom/intermedia/viewholders/HQViewHolder;-><init>(Landroid/view/View;)V

    .line 132
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public bindData(Ljava/lang/Object;I)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/intermedia/util/ObjectUtils;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    .line 138
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/intermedia/model/Leader;

    const/4 v0, 0x1

    .line 139
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/model/Leader;

    const/4 v1, 0x2

    .line 140
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/model/Leader;

    .line 142
    iget-object v1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->firstLeaderBalanceTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/intermedia/model/Leader;->getTotal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v2, p2, Lcom/intermedia/model/Leader;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->firstLeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 144
    iget-object v1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->firstLeaderUsernameTextView:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/intermedia/model/Leader;->username:Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object p2, p0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->secondLeaderBalanceTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/intermedia/model/Leader;->getTotal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p0}, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->context()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p2

    iget-object v1, v0, Lcom/intermedia/model/Leader;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object v1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->secondLeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 148
    iget-object p2, p0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->secondLeaderUsernameTextView:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/intermedia/model/Leader;->username:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p2, p0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->thirdLeaderBalanceTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/intermedia/model/Leader;->getTotal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {p0}, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->context()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p2

    iget-object v0, p1, Lcom/intermedia/model/Leader;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object v0, p0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->thirdLeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 152
    iget-object p2, p0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->thirdLeaderUsernameTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/intermedia/model/Leader;->username:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
