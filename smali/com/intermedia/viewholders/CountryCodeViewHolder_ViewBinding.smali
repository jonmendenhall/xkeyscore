.class public final Lcom/intermedia/viewholders/CountryCodeViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "CountryCodeViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/viewholders/CountryCodeViewHolder;


# direct methods
.method public constructor <init>(Lcom/intermedia/viewholders/CountryCodeViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/intermedia/viewholders/CountryCodeViewHolder_ViewBinding;->target:Lcom/intermedia/viewholders/CountryCodeViewHolder;

    const-string v0, "field \'countryCodeTextView\'"

    .line 20
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0086

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/viewholders/CountryCodeViewHolder;->countryCodeTextView:Landroid/widget/TextView;

    const-string v0, "field \'countryEmojiTextView\'"

    .line 21
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0087

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/viewholders/CountryCodeViewHolder;->countryEmojiTextView:Landroid/widget/TextView;

    const-string v0, "field \'countryNameTextView\'"

    .line 22
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0089

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/intermedia/viewholders/CountryCodeViewHolder;->countryNameTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/intermedia/viewholders/CountryCodeViewHolder_ViewBinding;->target:Lcom/intermedia/viewholders/CountryCodeViewHolder;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/intermedia/viewholders/CountryCodeViewHolder_ViewBinding;->target:Lcom/intermedia/viewholders/CountryCodeViewHolder;

    .line 31
    iput-object v1, v0, Lcom/intermedia/viewholders/CountryCodeViewHolder;->countryCodeTextView:Landroid/widget/TextView;

    .line 32
    iput-object v1, v0, Lcom/intermedia/viewholders/CountryCodeViewHolder;->countryEmojiTextView:Landroid/widget/TextView;

    .line 33
    iput-object v1, v0, Lcom/intermedia/viewholders/CountryCodeViewHolder;->countryNameTextView:Landroid/widget/TextView;

    return-void
.end method
