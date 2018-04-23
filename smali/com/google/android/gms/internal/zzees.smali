.class final Lcom/google/android/gms/internal/zzees;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmtq:Lcom/google/android/gms/internal/zzedn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzees;->zzmtq:Lcom/google/android/gms/internal/zzedn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzees;->zzmtq:Lcom/google/android/gms/internal/zzedn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedn;->interrupt()V

    return-void
.end method
