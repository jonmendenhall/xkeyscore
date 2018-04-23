.class public abstract Lcom/intermedia/adapters/HQAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HQAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/adapters/HQAdapter$SectionRow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/intermedia/viewholders/HQViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intermedia/adapters/HQAdapter;->sections:Ljava/util/List;

    return-void
.end method

.method private inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 147
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 148
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private objectFromPosition(I)Ljava/lang/Object;
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/intermedia/adapters/HQAdapter;->sectionRowFromPosition(I)Lcom/intermedia/adapters/HQAdapter$SectionRow;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/adapters/HQAdapter;->objectFromSectionRow(Lcom/intermedia/adapters/HQAdapter$SectionRow;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private sectionRowFromPosition(I)Lcom/intermedia/adapters/HQAdapter$SectionRow;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 129
    new-instance v0, Lcom/intermedia/adapters/HQAdapter$SectionRow;

    invoke-direct {v0, p0}, Lcom/intermedia/adapters/HQAdapter$SectionRow;-><init>(Lcom/intermedia/adapters/HQAdapter;)V

    .line 131
    iget-object v1, p0, Lcom/intermedia/adapters/HQAdapter;->sections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 132
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 137
    invoke-virtual {v0}, Lcom/intermedia/adapters/HQAdapter$SectionRow;->nextRow()V

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {v0}, Lcom/intermedia/adapters/HQAdapter$SectionRow;->nextSection()V

    goto :goto_0

    .line 142
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found in sections"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addSection(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/intermedia/adapters/HQAdapter;->sections:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSections(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 37
    invoke-virtual {p0, v0}, Lcom/intermedia/adapters/HQAdapter;->addSection(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearSections()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/intermedia/adapters/HQAdapter;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final getItemCount()I
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/intermedia/adapters/HQAdapter;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 100
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/intermedia/adapters/HQAdapter;->sectionRowFromPosition(I)Lcom/intermedia/adapters/HQAdapter$SectionRow;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/adapters/HQAdapter;->layout(Lcom/intermedia/adapters/HQAdapter$SectionRow;)I

    move-result p1

    return p1
.end method

.method public insertSection(ILjava/util/List;)V
    .locals 2
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/intermedia/adapters/HQAdapter;->sections:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method protected layout(Lcom/intermedia/adapters/HQAdapter$SectionRow;)I
    .locals 5
    .param p1    # Lcom/intermedia/adapters/HQAdapter$SectionRow;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Layout not specified (section %s, row %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 54
    invoke-static {p1}, Lcom/intermedia/adapters/HQAdapter$SectionRow;->access$000(Lcom/intermedia/adapters/HQAdapter$SectionRow;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Lcom/intermedia/adapters/HQAdapter$SectionRow;->access$100(Lcom/intermedia/adapters/HQAdapter$SectionRow;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 53
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected objectFromSectionRow(Lcom/intermedia/adapters/HQAdapter$SectionRow;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcom/intermedia/adapters/HQAdapter$SectionRow;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    iget-object v0, p0, Lcom/intermedia/adapters/HQAdapter;->sections:Ljava/util/List;

    invoke-virtual {p1}, Lcom/intermedia/adapters/HQAdapter$SectionRow;->section()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lcom/intermedia/adapters/HQAdapter$SectionRow;->row()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    check-cast p1, Lcom/intermedia/viewholders/HQViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/intermedia/adapters/HQAdapter;->onBindViewHolder(Lcom/intermedia/viewholders/HQViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcom/intermedia/viewholders/HQViewHolder;I)V
    .locals 1
    .param p1    # Lcom/intermedia/viewholders/HQViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    invoke-direct {p0, p2}, Lcom/intermedia/adapters/HQAdapter;->objectFromPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 77
    :try_start_0
    invoke-virtual {p1, v0, p2}, Lcom/intermedia/viewholders/HQViewHolder;->bindData(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/intermedia/adapters/HQAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/intermedia/viewholders/HQViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/intermedia/viewholders/HQViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/intermedia/adapters/HQAdapter;->inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p2, p1}, Lcom/intermedia/adapters/HQAdapter;->viewHolder(ILandroid/view/View;)Lcom/intermedia/viewholders/HQViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected sectionCount(I)I
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/intermedia/adapters/HQAdapter;->sections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/intermedia/adapters/HQAdapter;->sections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public sections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/intermedia/adapters/HQAdapter;->sections:Ljava/util/List;

    return-object v0
.end method

.method public setSection(ILjava/util/List;)V
    .locals 2
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/intermedia/adapters/HQAdapter;->sections:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public viewHolder(ILandroid/view/View;)Lcom/intermedia/viewholders/HQViewHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 62
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
