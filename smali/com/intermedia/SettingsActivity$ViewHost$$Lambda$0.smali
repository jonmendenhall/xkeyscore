.class final synthetic Lcom/intermedia/SettingsActivity$ViewHost$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/intermedia/SettingsActivity$ViewHost;


# direct methods
.method constructor <init>(Lcom/intermedia/SettingsActivity$ViewHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/SettingsActivity$ViewHost$$Lambda$0;->arg$1:Lcom/intermedia/SettingsActivity$ViewHost;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/SettingsActivity$ViewHost$$Lambda$0;->arg$1:Lcom/intermedia/SettingsActivity$ViewHost;

    invoke-virtual {v0, p1}, Lcom/intermedia/SettingsActivity$ViewHost;->lambda$new$0$SettingsActivity$ViewHost(Landroid/view/View;)V

    return-void
.end method
