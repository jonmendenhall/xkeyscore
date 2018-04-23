.class final Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;
.super Lcom/jakewharton/rxbinding2/widget/AbsListViewScrollEvent;
.source "AutoValue_AbsListViewScrollEvent.java"


# instance fields
.field private final firstVisibleItem:I

.field private final scrollState:I

.field private final totalItemCount:I

.field private final view:Landroid/widget/AbsListView;

.field private final visibleItemCount:I


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;IIII)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/widget/AbsListViewScrollEvent;-><init>()V

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null view"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->view:Landroid/widget/AbsListView;

    .line 26
    iput p2, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->scrollState:I

    .line 27
    iput p3, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->firstVisibleItem:I

    .line 28
    iput p4, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->visibleItemCount:I

    .line 29
    iput p5, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->totalItemCount:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 74
    :cond_0
    instance-of v1, p1, Lcom/jakewharton/rxbinding2/widget/AbsListViewScrollEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 75
    check-cast p1, Lcom/jakewharton/rxbinding2/widget/AbsListViewScrollEvent;

    .line 76
    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->view:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/AbsListViewScrollEvent;->view()Landroid/widget/AbsListView;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->scrollState:I

    .line 77
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/AbsListViewScrollEvent;->scrollState()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->firstVisibleItem:I

    .line 78
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/AbsListViewScrollEvent;->firstVisibleItem()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->visibleItemCount:I

    .line 79
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/AbsListViewScrollEvent;->visibleItemCount()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->totalItemCount:I

    .line 80
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/AbsListViewScrollEvent;->totalItemCount()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public firstVisibleItem()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->firstVisibleItem:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->view:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 91
    iget v2, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->scrollState:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 93
    iget v2, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->firstVisibleItem:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 95
    iget v2, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->visibleItemCount:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 97
    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->totalItemCount:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public scrollState()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->scrollState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbsListViewScrollEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->view:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scrollState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->scrollState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstVisibleItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->firstVisibleItem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visibleItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->visibleItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->totalItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalItemCount()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->totalItemCount:I

    return v0
.end method

.method public view()Landroid/widget/AbsListView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->view:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public visibleItemCount()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent;->visibleItemCount:I

    return v0
.end method
