-- --authors

-- \copy openalex.authors (id, orcid, display_name, display_name_alternatives, works_count, cited_by_count, last_known_institution, works_api_url, updated_date) from 'mm-full-records-csv-files/authors.csv' csv header
-- \copy openalex.authors_ids (author_id, openalex, orcid, scopus, twitter, wikipedia, mag) from 'mm-full-records-csv-files/authors_ids.csv' csv header
-- \copy openalex.authors_counts_by_year (author_id, year, works_count, cited_by_count, oa_works_count) from 'mm-full-records-csv-files/authors_counts_by_year.csv' csv header
--
-- --concepts
--
-- \copy openalex.concepts (id, wikidata, display_name, level, description, works_count, cited_by_count, image_url, image_thumbnail_url, works_api_url, updated_date) from 'mm-full-records-csv-files/concepts.csv' csv header
-- \copy openalex.concepts_ancestors (concept_id, ancestor_id) from 'mm-full-records-csv-files/concepts_ancestors.csv' csv header
-- \copy openalex.concepts_counts_by_year (concept_id, year, works_count, cited_by_count, oa_works_count) from 'mm-full-records-csv-files/concepts_counts_by_year.csv' csv header
-- \copy openalex.concepts_ids (concept_id, openalex, wikidata, wikipedia, umls_aui, umls_cui, mag) from 'mm-full-records-csv-files/concepts_ids.csv' csv header
-- \copy openalex.concepts_related_concepts (concept_id, related_concept_id, score) from 'mm-full-records-csv-files/concepts_related_concepts.csv' csv header
--
-- --institutions
--
-- \copy openalex.institutions (id, ror, display_name, country_code, type, homepage_url, image_url, image_thumbnail_url, display_name_acronyms, display_name_alternatives, works_count, cited_by_count, works_api_url, updated_date) from 'mm-full-records-csv-files/institutions.csv' csv header
-- \copy openalex.institutions_ids (institution_id, openalex, ror, grid, wikipedia, wikidata, mag) from 'mm-full-records-csv-files/institutions_ids.csv' csv header
-- \copy openalex.institutions_geo (institution_id, city, geonames_city_id, region, country_code, country, latitude, longitude) from 'mm-full-records-csv-files/institutions_geo.csv' csv header
-- \copy openalex.institutions_associated_institutions (institution_id, associated_institution_id, relationship) from 'mm-full-records-csv-files/institutions_associated_institutions.csv' csv header
-- \copy openalex.institutions_counts_by_year (institution_id, year, works_count, cited_by_count, oa_works_count) from 'mm-full-records-csv-files/institutions_counts_by_year.csv' csv header
--
-- --publishers
--
-- \copy openalex.publishers (id, display_name, alternate_titles, country_codes, hierarchy_level, parent_publisher, works_count, cited_by_count, sources_api_url, updated_date) from 'mm-full-records-csv-files/publishers.csv' csv header
-- \copy openalex.publishers_ids (publisher_id, openalex, ror, wikidata) from 'mm-full-records-csv-files/publishers_ids.csv' csv header
-- \copy openalex.publishers_counts_by_year (publisher_id, year, works_count, cited_by_count, oa_works_count) from 'mm-full-records-csv-files/publishers_counts_by_year.csv' csv header

--sources

\copy openalex.sources (id, issn_l, issn, display_name, publisher, works_count, cited_by_count, is_oa, is_in_doaj, homepage_url, works_api_url, updated_date, type) from 'mm-full-records-csv-files/sources.csv' csv header
\copy openalex.sources_ids (source_id, openalex, issn_l, issn, mag, wikidata, fatcat) from 'mm-full-records-csv-files/sources_ids.csv' csv header
\copy openalex.sources_counts_by_year (source_id, year, works_count, cited_by_count, oa_works_count) from 'mm-full-records-csv-files/sources_counts_by_year.csv' csv header

--works

\copy openalex.works (id, doi, title, display_name, publication_year, publication_date, type, cited_by_count, is_retracted, is_paratext, cited_by_api_url, abstract_inverted_index, language) from 'mm-full-records-csv-files/works.csv' csv header
\copy openalex.works_primary_locations (work_id, source_id, landing_page_url, pdf_url, is_oa, version, license) from 'mm-full-records-csv-files/works_primary_locations.csv' csv header
\copy openalex.works_locations (work_id, source_id, landing_page_url, pdf_url, is_oa, version, license) from 'mm-full-records-csv-files/works_locations.csv' csv header
\copy openalex.works_best_oa_locations (work_id, source_id, landing_page_url, pdf_url, is_oa, version, license) from 'mm-full-records-csv-files/works_best_oa_locations.csv' csv header
\copy openalex.works_authorships (work_id, author_position, author_id, institution_id, raw_affiliation_string) from 'mm-full-records-csv-files/works_authorships.csv' csv header
\copy openalex.works_biblio (work_id, volume, issue, first_page, last_page) from 'mm-full-records-csv-files/works_biblio.csv' csv header
\copy openalex.works_concepts (work_id, concept_id, score) from 'mm-full-records-csv-files/works_concepts.csv' csv header
\copy openalex.works_ids (work_id, openalex, doi, mag, pmid, pmcid) from 'mm-full-records-csv-files/works_ids.csv' csv header
\copy openalex.works_mesh (work_id, descriptor_ui, descriptor_name, qualifier_ui, qualifier_name, is_major_topic) from 'mm-full-records-csv-files/works_mesh.csv' csv header
\copy openalex.works_open_access (work_id, is_oa, oa_status, oa_url, any_repository_has_fulltext) from 'mm-full-records-csv-files/works_open_access.csv' csv header
\copy openalex.works_referenced_works (work_id, referenced_work_id) from 'mm-full-records-csv-files/works_referenced_works.csv' csv header
\copy openalex.works_related_works (work_id, related_work_id) from 'mm-full-records-csv-files/works_related_works.csv' csv header

