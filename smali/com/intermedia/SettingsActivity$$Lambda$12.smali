.class final synthetic Lcom/intermedia/SettingsActivity$$Lambda$12;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/SettingsActivity$$Lambda$12;->arg$1:Landroid/widget/Button;

    return-void
.end method

.method static get$Lambda(Landroid/widget/Button;)Lio/reactivex/functions/Consumer;
    .locals 1

    new-instance v0, Lcom/intermedia/SettingsActivity$$Lambda$12;

    invoke-direct {v0, p0}, Lcom/intermedia/SettingsActivity$$Lambda$12;-><init>(Landroid/widget/Button;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/SettingsActivity$$Lambda$12;->arg$1:Landroid/widget/Button;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
