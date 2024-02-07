package artdb

import grails.config.Config
import grails.core.support.GrailsConfigurationAware
import org.springframework.context.MessageSource
import org.springframework.context.i18n.LocaleContextHolder

class LocaleLanguageTagLib implements GrailsConfigurationAware {

    static namespace = 'locale'

    static defaultEncodeAs = [taglib: 'none']

    MessageSource messageSource

    List<String> languages

    @Override
    void setConfiguration(Config co) {
        //languages = co.getProperty('guide.languages', List)
        languages = ['de', 'en', 'fa']
    }

    def localeDropdownListItems = { args ->
        String uri = args.uri

        for (String lang : languages) {
            String languageCode = "language.$lang"

            def locale = LocaleContextHolder.locale
            def msg = messageSource.getMessage(languageCode, [] as Object[], null, locale)
            out << "<li><a href='${uri}?lang=${lang}'>${msg}</a></li>"
        }
    }
}