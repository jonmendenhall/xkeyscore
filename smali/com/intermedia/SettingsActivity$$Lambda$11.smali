.class final synthetic Lcom/intermedia/SettingsActivity$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/SettingsActivity$$Lambda$11;->arg$1:Lcom/intermedia/SettingsActivity;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/SettingsActivity$$Lambda$11;->arg$1:Lcom/intermedia/SettingsActivity;

    invoke-virtual {v0, p1}, Lcom/intermedia/SettingsActivity;->lambda$onCreate$5$SettingsActivity(Ljava/lang/Object;)V

    return-void
.end method
