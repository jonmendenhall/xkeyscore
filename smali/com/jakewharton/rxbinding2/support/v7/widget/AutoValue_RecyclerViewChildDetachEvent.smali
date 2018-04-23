.class final Lcom/jakewharton/rxbinding2/support/v7/widget/AutoValue_RecyclerViewChildDetachEvent;
.super Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildDetachEvent;
.source "AutoValue_RecyclerViewChildDetachEvent.java"


# instance fields
.field private final child:Landroid/view/View;

.field private final view:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildDetachEvent;-><init>()V

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null view"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/AutoValue_RecyclerViewChildDetachEvent;->view:Landroid/support/v7/widget/RecyclerView;

    if-nez p2, :cond_1

    .line 22
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null child"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    iput-object p2, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/AutoValue_RecyclerViewChildDetachEvent;->child:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public child()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/AutoValue_RecyclerViewChildDetachEvent;->child:Landroid/view/View;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 52
    :cond_0
    instance-of v1, p1, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildDetachEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 53
    check-cast p1, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildDetachEvent;

    .line 54
    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/AutoValue_RecyclerViewChildDetachEvent;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildDetachEvent;->view()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/AutoValue_RecyclerViewChildDetachEvent;->child:Landroid/view/View;

    .line 55
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildDetachEvent;->child()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/AutoValue_RecyclerViewChildDetachEvent;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 66
    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/AutoValue_RecyclerViewChildDetachEvent;->child:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecyclerViewChildDetachEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/AutoValue_RecyclerViewChildDetachEvent;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/AutoValue_RecyclerViewChildDetachEvent;->child:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public view()Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/AutoValue_RecyclerViewChildDetachEvent;->view:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method
