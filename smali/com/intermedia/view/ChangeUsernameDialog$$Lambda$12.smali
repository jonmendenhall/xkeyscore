.class final synthetic Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$12;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$12;->arg$1:Landroid/widget/EditText;

    return-void
.end method

.method static get$Lambda(Landroid/widget/EditText;)Lio/reactivex/functions/Consumer;
    .locals 1

    new-instance v0, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$12;

    invoke-direct {v0, p0}, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$12;-><init>(Landroid/widget/EditText;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$12;->arg$1:Landroid/widget/EditText;

    check-cast p1, Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method
