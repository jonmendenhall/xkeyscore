.class public final Lcom/google/android/gms/internal/zzeao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzeap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final zzmmk:Lcom/google/android/gms/internal/zzeao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzeao;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeao;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzeao;->zzmmk:Lcom/google/android/gms/internal/zzeao;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzbto()Lcom/google/android/gms/internal/zzeao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/zzeao<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzeao;->zzmmk:Lcom/google/android/gms/internal/zzeao;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/android/gms/internal/zzeap;Lcom/google/android/gms/internal/zzeap;)Lcom/google/android/gms/internal/zzeap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/zzeap<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/zzeap<",
            "TK;TV;>;)",
            "Lcom/google/android/gms/internal/zzeap<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lcom/google/android/gms/internal/zzeap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p3, Lcom/google/android/gms/internal/zzeas;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/zzeas;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method public final zza(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lcom/google/android/gms/internal/zzeap<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzear;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzear<",
            "TK;TV;>;)V"
        }
    .end annotation

    return-void
.end method

.method public final zzbtn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzbtp()Lcom/google/android/gms/internal/zzeap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzeap<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final zzbtq()Lcom/google/android/gms/internal/zzeap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzeap<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final zzbtr()Lcom/google/android/gms/internal/zzeap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzeap<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final zzbts()Lcom/google/android/gms/internal/zzeap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzeap<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method
