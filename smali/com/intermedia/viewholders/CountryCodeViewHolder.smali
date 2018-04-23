.class public final Lcom/intermedia/viewholders/CountryCodeViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CountryCodeViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/viewholders/CountryCodeViewHolder$Delegate;
    }
.end annotation


# instance fields
.field countryCodeTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0086
    .end annotation
.end field

.field countryEmojiTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0087
    .end annotation
.end field

.field private countryInfo:Lcom/intermedia/login/CountryInfo;

.field countryNameTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0089
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/intermedia/viewholders/CountryCodeViewHolder$Delegate;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/viewholders/CountryCodeViewHolder$Delegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 27
    new-instance v0, Lcom/intermedia/viewholders/CountryCodeViewHolder$$Lambda$0;

    invoke-direct {v0, p0, p2}, Lcom/intermedia/viewholders/CountryCodeViewHolder$$Lambda$0;-><init>(Lcom/intermedia/viewholders/CountryCodeViewHolder;Lcom/intermedia/viewholders/CountryCodeViewHolder$Delegate;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/intermedia/login/CountryInfo;)V
    .locals 5
    .param p1    # Lcom/intermedia/login/CountryInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    iput-object p1, p0, Lcom/intermedia/viewholders/CountryCodeViewHolder;->countryInfo:Lcom/intermedia/login/CountryInfo;

    .line 32
    iget-object v0, p0, Lcom/intermedia/viewholders/CountryCodeViewHolder;->countryCodeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/intermedia/viewholders/CountryCodeViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/intermedia/login/CountryInfo;->callingCode:I

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f110163

    .line 32
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/intermedia/viewholders/CountryCodeViewHolder;->countryEmojiTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/intermedia/login/CountryInfo;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/intermedia/login/CountryInfo;->localeToEmoji(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/intermedia/viewholders/CountryCodeViewHolder;->countryNameTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/intermedia/login/CountryInfo;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final synthetic lambda$new$0$CountryCodeViewHolder(Lcom/intermedia/viewholders/CountryCodeViewHolder$Delegate;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/intermedia/viewholders/CountryCodeViewHolder$Delegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    iget-object p2, p0, Lcom/intermedia/viewholders/CountryCodeViewHolder;->countryInfo:Lcom/intermedia/login/CountryInfo;

    invoke-interface {p1, p2}, Lcom/intermedia/viewholders/CountryCodeViewHolder$Delegate;->countrySelected(Lcom/intermedia/login/CountryInfo;)V

    return-void
.end method
