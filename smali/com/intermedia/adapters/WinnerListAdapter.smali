.class public final Lcom/intermedia/adapters/WinnerListAdapter;
.super Lcom/intermedia/adapters/HQAdapter;
.source "WinnerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/intermedia/adapters/HQAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected layout(Lcom/intermedia/adapters/HQAdapter$SectionRow;)I
    .locals 0
    .param p1    # Lcom/intermedia/adapters/HQAdapter$SectionRow;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const p1, 0x7f0c0080

    return p1
.end method

.method public takeData(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/intermedia/model/HQGameWinner;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lcom/intermedia/adapters/WinnerListAdapter;->addSection(Ljava/util/List;)V

    .line 33
    invoke-virtual {p0}, Lcom/intermedia/adapters/WinnerListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public viewHolder(ILandroid/view/View;)Lcom/intermedia/viewholders/HQViewHolder;
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 39
    new-instance p1, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;

    invoke-direct {p1, p2}, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
