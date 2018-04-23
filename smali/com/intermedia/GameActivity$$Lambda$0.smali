.class final synthetic Lcom/intermedia/GameActivity$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/intermedia/GameActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/GameActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/GameActivity$$Lambda$0;->arg$1:Lcom/intermedia/GameActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/GameActivity$$Lambda$0;->arg$1:Lcom/intermedia/GameActivity;

    invoke-virtual {v0, p1, p2}, Lcom/intermedia/GameActivity;->lambda$showGoHomeAlert$0$GameActivity(Landroid/content/DialogInterface;I)V

    return-void
.end method
