.class public final Lcom/intermedia/adapters/LeaderboardAdapter;
.super Lcom/intermedia/adapters/HQAdapter;
.source "LeaderboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;,
        Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;,
        Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;
    }
.end annotation


# static fields
.field private static final SECTION_LEADERS:I = 0x2

.field private static final SECTION_TOGGLE_BUTTONS:I = 0x0

.field private static final SECTION_TOP_THREE:I = 0x1


# instance fields
.field private delegate:Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;


# direct methods
.method public constructor <init>(Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;)V
    .locals 1
    .param p1    # Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0}, Lcom/intermedia/adapters/HQAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/intermedia/adapters/LeaderboardAdapter;->delegate:Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/intermedia/adapters/LeaderboardAdapter;->insertSection(ILjava/util/List;)V

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/intermedia/adapters/LeaderboardAdapter;->insertSection(ILjava/util/List;)V

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/intermedia/adapters/LeaderboardAdapter;->insertSection(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected layout(Lcom/intermedia/adapters/HQAdapter$SectionRow;)I
    .locals 2
    .param p1    # Lcom/intermedia/adapters/HQAdapter$SectionRow;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-virtual {p1}, Lcom/intermedia/adapters/HQAdapter$SectionRow;->section()I

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x7f0c005a

    return p1

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/intermedia/adapters/HQAdapter$SectionRow;->section()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const p1, 0x7f0c005b

    return p1

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/intermedia/adapters/HQAdapter$SectionRow;->section()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const p1, 0x7f0c0059

    return p1

    :cond_2
    const p1, 0x7f0c0045

    return p1
.end method

.method public takeLeaderData(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/intermedia/model/Leader;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/intermedia/adapters/LeaderboardAdapter;->setSection(ILjava/util/List;)V

    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-le v0, v3, :cond_0

    .line 55
    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/intermedia/adapters/LeaderboardAdapter;->setSection(ILjava/util/List;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/intermedia/adapters/LeaderboardAdapter;->setSection(ILjava/util/List;)V

    .line 60
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    move v1, v3

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 62
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/intermedia/adapters/LeaderboardAdapter;->setSection(ILjava/util/List;)V

    .line 66
    invoke-virtual {p0}, Lcom/intermedia/adapters/LeaderboardAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public viewHolder(ILandroid/view/View;)Lcom/intermedia/viewholders/HQViewHolder;
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/intermedia/adapters/HQAdapter;->viewHolder(ILandroid/view/View;)Lcom/intermedia/viewholders/HQViewHolder;

    move-result-object p1

    return-object p1

    .line 76
    :pswitch_0
    new-instance p1, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;-><init>(Lcom/intermedia/adapters/LeaderboardAdapter;Landroid/view/View;)V

    return-object p1

    .line 74
    :pswitch_1
    new-instance p1, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;

    iget-object v0, p0, Lcom/intermedia/adapters/LeaderboardAdapter;->delegate:Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;

    invoke-direct {p1, p2, v0}, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;-><init>(Landroid/view/View;Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;)V

    return-object p1

    .line 78
    :pswitch_2
    new-instance p1, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;-><init>(Lcom/intermedia/adapters/LeaderboardAdapter;Landroid/view/View;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x7f0c0059
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
