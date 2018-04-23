.class final Lcom/google/android/gms/internal/zzcjf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjgn:Lcom/google/android/gms/internal/zzcgi;

.field private synthetic zzjgo:Lcom/google/android/gms/internal/zzcir;

.field private synthetic zzjgt:Lcom/google/android/gms/internal/zzcln;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcir;Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjf;->zzjgo:Lcom/google/android/gms/internal/zzcir;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcjf;->zzjgt:Lcom/google/android/gms/internal/zzcln;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcjf;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjf;->zzjgo:Lcom/google/android/gms/internal/zzcir;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcir;->zza(Lcom/google/android/gms/internal/zzcir;)Lcom/google/android/gms/internal/zzcim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzbal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjf;->zzjgo:Lcom/google/android/gms/internal/zzcir;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcir;->zza(Lcom/google/android/gms/internal/zzcir;)Lcom/google/android/gms/internal/zzcim;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjf;->zzjgt:Lcom/google/android/gms/internal/zzcln;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjf;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcim;->zzc(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V

    return-void
.end method
