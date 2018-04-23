.class public final Lcom/intermedia/adapters/CountryCodeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CountryCodeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/adapters/CountryCodeAdapter$Delegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/intermedia/viewholders/CountryCodeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intermedia/login/CountryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lcom/intermedia/adapters/CountryCodeAdapter$Delegate;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/intermedia/adapters/CountryCodeAdapter$Delegate;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/adapters/CountryCodeAdapter$Delegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/intermedia/login/CountryInfo;",
            ">;",
            "Lcom/intermedia/adapters/CountryCodeAdapter$Delegate;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/intermedia/adapters/CountryCodeAdapter;->data:Ljava/util/List;

    .line 22
    iput-object p2, p0, Lcom/intermedia/adapters/CountryCodeAdapter;->delegate:Lcom/intermedia/adapters/CountryCodeAdapter$Delegate;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/intermedia/adapters/CountryCodeAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    check-cast p1, Lcom/intermedia/viewholders/CountryCodeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/intermedia/adapters/CountryCodeAdapter;->onBindViewHolder(Lcom/intermedia/viewholders/CountryCodeViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/intermedia/viewholders/CountryCodeViewHolder;I)V
    .locals 1
    .param p1    # Lcom/intermedia/viewholders/CountryCodeViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    iget-object v0, p0, Lcom/intermedia/adapters/CountryCodeAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/intermedia/login/CountryInfo;

    invoke-virtual {p1, p2}, Lcom/intermedia/viewholders/CountryCodeViewHolder;->bindData(Lcom/intermedia/login/CountryInfo;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/intermedia/adapters/CountryCodeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/intermedia/viewholders/CountryCodeViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/intermedia/viewholders/CountryCodeViewHolder;
    .locals 2

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0034

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 31
    new-instance p2, Lcom/intermedia/viewholders/CountryCodeViewHolder;

    iget-object v0, p0, Lcom/intermedia/adapters/CountryCodeAdapter;->delegate:Lcom/intermedia/adapters/CountryCodeAdapter$Delegate;

    invoke-direct {p2, p1, v0}, Lcom/intermedia/viewholders/CountryCodeViewHolder;-><init>(Landroid/view/View;Lcom/intermedia/viewholders/CountryCodeViewHolder$Delegate;)V

    return-object p2
.end method
