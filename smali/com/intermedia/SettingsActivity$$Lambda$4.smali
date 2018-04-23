.class final synthetic Lcom/intermedia/SettingsActivity$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/SettingsActivity$$Lambda$4;->arg$1:Lcom/intermedia/SettingsActivity;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/SettingsActivity$$Lambda$4;->arg$1:Lcom/intermedia/SettingsActivity;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/intermedia/SettingsActivity;->bridge$lambda$0$SettingsActivity(Ljava/lang/String;)V

    return-void
.end method
