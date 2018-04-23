.class final synthetic Lcom/intermedia/viewholders/CountryCodeViewHolder$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/intermedia/viewholders/CountryCodeViewHolder;

.field private final arg$2:Lcom/intermedia/viewholders/CountryCodeViewHolder$Delegate;


# direct methods
.method constructor <init>(Lcom/intermedia/viewholders/CountryCodeViewHolder;Lcom/intermedia/viewholders/CountryCodeViewHolder$Delegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/viewholders/CountryCodeViewHolder$$Lambda$0;->arg$1:Lcom/intermedia/viewholders/CountryCodeViewHolder;

    iput-object p2, p0, Lcom/intermedia/viewholders/CountryCodeViewHolder$$Lambda$0;->arg$2:Lcom/intermedia/viewholders/CountryCodeViewHolder$Delegate;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/viewholders/CountryCodeViewHolder$$Lambda$0;->arg$1:Lcom/intermedia/viewholders/CountryCodeViewHolder;

    iget-object v1, p0, Lcom/intermedia/viewholders/CountryCodeViewHolder$$Lambda$0;->arg$2:Lcom/intermedia/viewholders/CountryCodeViewHolder$Delegate;

    invoke-virtual {v0, v1, p1}, Lcom/intermedia/viewholders/CountryCodeViewHolder;->lambda$new$0$CountryCodeViewHolder(Lcom/intermedia/viewholders/CountryCodeViewHolder$Delegate;Landroid/view/View;)V

    return-void
.end method
